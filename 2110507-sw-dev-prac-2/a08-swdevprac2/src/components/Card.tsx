import { useState } from 'react';
import Image from 'next/image';
import InteractiveCard from './InteractiveCard';
import Rating from '@mui/material/Rating';

export default function Card({
  hospitalName,
  imgSrc,
  rating,
  onRatingChange,
}: {
  hospitalName: string;
  imgSrc: string;
  rating: number;
  onRatingChange: (newRating: number) => void;
}) {
  return (
    <InteractiveCard contentName={hospitalName}>
      <div className="w-full h-[70%] relative rounded-t-lg">
        <Image
          src={imgSrc}
          alt="Hospital Picture"
          fill={true}
          className="object-cover rounded-t-lg"
        />
      </div>

      <div className="w-full h-[15%] p-[10px] flex items-center justify-center text-green-800 font-semibold">
        {hospitalName}
      </div>

      {/* Rating Component */}
      <div className="w-full h-[10%] p-[10px] flex items-center justify-center">
        <Rating
          id={`${hospitalName} Rating`}
          name={`${hospitalName} Rating`}
          data-testid={`${hospitalName} Rating`}
          value={rating}
          onChange={(event, newValue) => {
            if (newValue !== null) {
              onRatingChange(newValue); // เมื่อเปลี่ยนค่า rating ให้เรียก onRatingChange
            }
          }}
          onClick={(e) => e.stopPropagation()}
        />
      </div>
    </InteractiveCard>
  );
}
