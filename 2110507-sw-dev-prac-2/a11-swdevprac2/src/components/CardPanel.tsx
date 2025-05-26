'use client'
import { useReducer, useState, useEffect, useRef } from 'react';
import getHospitals from '@/libs/getHospitals';
import Card from './Card';
import Link from 'next/link';

interface Hospital {
  id: string;
  name: string;
  picture: string;
  rating?: number;
}

export default function CardPanel() {
  // Type the state with proper types
  const [hospitalResponse, setHospitalResponse] = useState<{ data: Hospital[] } | null>(null);

  useEffect(() => {
    const fetchData = async () => {
      const hospitals = await getHospitals();
      setHospitalResponse(hospitals); // Update state with correct data
    };
    fetchData();
  }, []);

  const countRef = useRef(0);
  const inputRef = useRef<HTMLInputElement>(null);

  // Initial state for hospital ratings
  const initialState = new Map<string, number>([
    ['Chulalongkorn Hospital', 0],
    ['Rajavithi Hospital', 0],
    ['Thammasat University Hospital', 0],
  ]);

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

  const [ratingMap, dispatchRating] = useReducer(ratingReducer, initialState);

  // Show loading if hospitalResponse is null
  if (!hospitalResponse) return <p>Hospital Panel is Loading ...</p>;

  return (
    <div>
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
        {hospitalResponse.data.map((hospitalItem) => (
          <Link href={`/hospital/${hospitalItem.id}`} className="w-1/5" key={hospitalItem.id}>
            <Card
              hospitalName={hospitalItem.name}
              imgSrc={hospitalItem.picture}
              rating={ratingMap.get(hospitalItem.name) || 0}
              onRatingChange={(newRating: number) =>
                dispatchRating({ type: 'updateRating', hospitalName: hospitalItem.name, rating: newRating })
              }
            />
          </Link>
        ))}
      </div>

      <div className="w-full text-xl font-medium mt-4">Hospital List with Ratings:</div>
      <div className="mt-2">
        {Array.from(ratingMap.entries()).map(([hospital, rating]) => (
          <div
            key={hospital}
            data-testid={hospital}
            className="cursor-pointer p-2 border-b-2 border-gray-300 hover:bg-gray-100"
            onClick={() => dispatchRating({ type: 'removeHospital', hospitalName: hospital })}
          >
            {hospital}: {rating} stars
          </div>
        ))}
      </div>

      <button
        className="block rounded-md bg-sky-600 hover:bg-indigo-600 px-3 py-2 text-white shadow-sm"
        onClick={() => {
          countRef.current = countRef.current + 1;
          alert(countRef.current);
        }}
      >
        Count with Ref Object
      </button>

      <input
        type="text"
        placeholder="Please fill"
        className="block text-gray-900 text-sm rounded-lg p-2 m-2 bg-purple-50 ring-1 ring-insert ring-purple-400 focus:outline-none focus:bg-purple-200 focus:ring-2"
        ref={inputRef}
      />

      <button
        className="block rounded-md bg-sky-600 hover:bg-indigo-600 px-3 py-2 text-white shadow-sm"
        onClick={() => {
          if (inputRef.current != null) inputRef.current.focus();
        }}
      >
        Focus Input
      </button>
    </div>
  );
}
