'use client'
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import styles from './banner.module.css'
import Image from 'next/image';
import { useSession } from 'next-auth/react';

export default function Banner () {
    const covers = ['/img/cover.jpg', '/img/cover2.jpg', '/img/cover3.jpg', '/img/cover4.jpg']
    let [index, setIndex] = useState(0)
    const router = useRouter()

    const { data: session} = useSession()
    console.log(session?.user.token)

    return (
        <div className="relative w-full h-[500px]" onClick={()=>{ setIndex(index+1) }}>
            <Image 
                src={covers[index%4]}
                alt='cover'
                fill={true}
                priority
                className="object-cover"
            />
            <div className="absolute inset-0 flex flex-col justify-center items-center bg-black bg-opacity-50 p-6 text-white text-center">
                <h1 className="text-4xl mb-4 font-sans">Vaccine Service Center</h1>
                <h3 className="text-xl mb-2 font-sans">
                    เราให้บริการฉีดวัคซีนหลายชนิด ช่วยป้องกันโรค เสริมสร้างภูมิคุ้มกัน ลดความเสี่ยงอาการรุนแรง ปกป้องสุขภาพคุณและครอบครัวได้แล้ววันนี้!
                </h3>
                <h3 className="text-lg font-sans">ฉีดได้ทุกวัน เวลา 10.00-18.00</h3>
            </div>
            {
                session? <div className='z-30 absolute top-5 right-10 font-semibold text-red-500 text-xl'>
                    Welcome {session.user?.name}</div>
                    : null
            }
            <button className='bg-white text-cyan-600 border border-cyan-600
                font-semibold py-2 px-2 m-2 m-2 rounded z-30 absolute bottom-0 right-0
                hover:bg-cyan-600 hover:text-white hover:border-transparent'
                onClick={(e)=>{e.stopPropagation(); router.push('/hospital')}}>
                Select Your Hospital
            </button>
        </div>
    );
}