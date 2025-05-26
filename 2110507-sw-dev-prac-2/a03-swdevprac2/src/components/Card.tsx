import styles from './card.module.css'
import Image from 'next/image'

export default function Card() {
    return (
        <div className={styles.card}>
            <div className={styles.cardimg}>
                <Image src={'/img/vaccine1.jpg'}
                alt='Product Picture'
                fill={true}
                objectFit='cover'
                />
            </div>
            <div className={styles.cardtext}>
                <h2>Qdenga</h2>
                <p>ฉีด 2 เข็ม ห่างกัน 3 เดือน</p>
                <p>ป้องกันไข้เลือดออกจากทุกสายพันธุ์ ได้สูงถึง 80.2% และป้องกันการนอนโรงพยาบาลได้สูงถึง 90.4%</p>
            </div>
        </div>
    )
}