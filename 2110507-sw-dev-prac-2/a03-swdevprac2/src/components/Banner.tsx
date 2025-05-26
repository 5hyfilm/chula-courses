import styles from './banner.module.css'
import Image from 'next/image';

export default function Banner () {
    return (
        <div className={styles.banner}>
            <Image src={'/img/vaccinecenter1.jpg'}
            alt='cover'
            fill={true}
            priority
            objectFit='cover'/>
            <div className={styles.bannerText}>
                <h1>Vaccine Service Center</h1>
                <h3>เราให้บริการฉีดวัคซีนหลายชนิด ช่วยป้องกันโรค เสริมสร้างภูมิคุ้มกัน ลดความเสี่ยงอาการรุนแรง ปกป้องสุขภาพคุณและครอบครัวได้แล้ววันนี้!</h3>
                <h3>ฉีดได้ทุกวัน เวลา 10.00-18.00</h3>
            </div>

        </div>
    );
}