'use client'; // ตรวจสอบว่าใช้ directive นี้เพื่อทำให้ฟังก์ชันทำงานใน client-side
import { useReducer } from 'react';
import Card from './Card';
import Link from 'next/link';

export default function CardPanel() {
  // Initial state ของโรงพยาบาลและค่า rating เริ่มต้นเป็น 0
  const initialState = new Map<string, number>([
    ['Chulalongkorn Hospital', 0],
    ['Rajavithi Hospital', 0],
    ['Thammasat University Hospital', 0],
  ]);

  // Reducer function สำหรับจัดการ state ชนิด Map (สำหรับ rating)
  const ratingReducer = (
    state: Map<string, number>,
    action: { type: string; hospitalName: string; rating?: number }
  ) => {
    switch (action.type) {
      case 'updateRating': {
        if (action.rating !== undefined) {
          const newState = new Map(state);
          newState.set(action.hospitalName, action.rating);
          return newState;
        }
        return state;
      }
      case 'removeHospital': {
        const newState = new Map(state);
        newState.delete(action.hospitalName);
        return newState;
      }
      default:
        return state;
    }
  };

  // ใช้ useReducer สำหรับ rating (Map)
  const [ratingMap, dispatchRating] = useReducer(ratingReducer, initialState);

  // Mock Data
  const mockHospitalRepo = [
    { hid: '001', name: 'Chulalongkorn Hospital', image: '/img/chula.jpg' },
    { hid: '002', name: 'Rajavithi Hospital', image: '/img/rajavithi.jpg' },
    { hid: '003', name: 'Thammasat University Hospital', image: '/img/thammasat.jpg' },
  ];

  return (
    <div>
      {/* Card Components */}
      <div
        style={{
          margin: '20px',
          display: 'flex',
          flexDirection: 'row',
          flexWrap: 'wrap',
          justifyContent: 'space-around',
          alignContent: 'space-around',
        }}
      >
        {mockHospitalRepo.map((hospitalItem) => (
          <Link href={`/hospital/${hospitalItem.hid}`} className="w-1/5" key={hospitalItem.hid}>
            <Card
              hospitalName={hospitalItem.name}
              imgSrc={hospitalItem.image}
              rating={ratingMap.get(hospitalItem.name) || 0} // ใช้ hospitalItem.name ในการดึง rating ที่ถูกต้อง
              onRatingChange={(newRating: number) =>
                dispatchRating({ type: 'updateRating', hospitalName: hospitalItem.name, rating: newRating }) // ใช้ hospitalItem.name ที่ถูกต้อง
              }
            />
          </Link>
        ))}
      </div>

      {/* แสดงรายชื่อโรงพยาบาลพร้อมกับค่า Rating */}
      <div className="w-full text-xl font-medium mt-4">Hospital List with Ratings:</div>
      <div className="mt-2">
        {Array.from(ratingMap.entries()).map(([hospital, rating]) => (
          <div
            key={hospital}
            data-testid={hospital} // ตั้งค่า data-testid เป็นชื่อโรงพยาบาล
            className="cursor-pointer p-2 border-b-2 border-gray-300 hover:bg-gray-100"
            onClick={() => dispatchRating({ type: 'removeHospital', hospitalName: hospital })}
          >
            {hospital}: {rating} stars
          </div>
        ))}
      </div>
    </div>
  );
}
