import styles from './card.module.css'
import Image from 'next/image'

export default function Card( {hospitalName, imgSrc}: {hospitalName: string, imgSrc: string}) {
    return (
        <div className="w-1/5 h-[300px] rounded-lg shadow-lg bg-white overflow-hidden hover:shadow-2xl transition-shadow duration-300">
            <div className="w-full h-[70%] relative">
                <Image
                    src={imgSrc}
                    alt="Hospital Picture"
                    fill={true}
                    className="object-cover rounded-t-lg"
                />
            </div>
            <div className="w-full h-[30%] p-[10px] flex items-center justify-center bg-green-100 text-green-800 font-semibold">
                {hospitalName}
            </div>
        </div>
    )
}