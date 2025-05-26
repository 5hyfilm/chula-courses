import styles from './banner.module.css'
import Image from 'next/image';

export default function Banner () {
    return (
        <div className="relative w-full h-[500px]">
            <Image 
                src='/img/vaccinecenter.jpg'
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