'use client'; // ตรวจสอบว่าใช้ directive นี้เพื่อทำให้ฟังก์ชันทำงานใน client-side
import { useReducer } from 'react';
import Card from './Card';

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
        <Card
          hospitalName="Chulalongkorn Hospital"
          imgSrc="/img/chula.jpg"
          rating={ratingMap.get('Chulalongkorn Hospital') || 0}
          onRatingChange={(newRating: number) =>
            dispatchRating({ type: 'updateRating', hospitalName: 'Chulalongkorn Hospital', rating: newRating })
          }
        />

        <Card
          hospitalName="Rajavithi Hospital"
          imgSrc="/img/rajavithi.jpg"
          rating={ratingMap.get('Rajavithi Hospital') || 0}
          onRatingChange={(newRating: number) =>
            dispatchRating({ type: 'updateRating', hospitalName: 'Rajavithi Hospital', rating: newRating })
          }
        />

        <Card
          hospitalName="Thammasat University Hospital"
          imgSrc="/img/thammasat.jpg"
          rating={ratingMap.get('Thammasat University Hospital') || 0}
          onRatingChange={(newRating: number) =>
            dispatchRating({ type: 'updateRating', hospitalName: 'Thammasat University Hospital', rating: newRating })
          }
        />
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
