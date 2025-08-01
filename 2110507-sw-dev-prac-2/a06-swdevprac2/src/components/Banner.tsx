'use client'
import { useState } from 'react';
import styles from './banner.module.css'
import Image from 'next/image';

export default function Banner () {
    const covers = ['/img/bg1.jpg', '/img/bg2.jpg', '/img/bg3.jpg']
    let [index, setIndex] = useState(0)

    return (
        <div className="relative w-full h-[500px]" onClick={()=>{ setIndex(index+1) }}>
            <Image 
                src={covers[index%3]}
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
        </div>
    );
}