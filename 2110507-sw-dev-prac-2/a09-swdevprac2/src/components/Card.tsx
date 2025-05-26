import { useState } from 'react';
import Image from 'next/image';
import InteractiveCard from './InteractiveCard';
import Rating from '@mui/material/Rating';

export default function Card({
  hospitalName,
  imgSrc,
  rating, // Optional prop
  onRatingChange, // Optional prop
}: {
  hospitalName: string;
  imgSrc: string;
  rating?: number; // Marking rating as optional
  onRatingChange?: (newRating: number) => void; // Marking onRatingChange as optional
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

      {/* Conditionally render the Rating component if the rating prop is provided */}
      {rating !== undefined && (
        <div className="w-full h-[10%] p-[10px] flex items-center justify-center">
          {onRatingChange ? (
            <Rating
              id={`${hospitalName} Rating`}
              name={`${hospitalName} Rating`}
              data-testid={`${hospitalName} Rating`}
              value={rating}
              onChange={(event, newValue) => {
                if (newValue !== null) {
                  onRatingChange(newValue); // Call onRatingChange if provided
                }
              }}
              onClick={(e) => e.stopPropagation()}
            />
          ) : (
            <Rating
              id={`${hospitalName} Rating`}
              name={`${hospitalName} Rating`}
              data-testid={`${hospitalName} Rating`}
              value={rating}
              readOnly
            />
          )}
        </div>
      )}
    </InteractiveCard>
  );
}
