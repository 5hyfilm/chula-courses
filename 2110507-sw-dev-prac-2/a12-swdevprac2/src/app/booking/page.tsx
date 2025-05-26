'use client';
import DateReserve from "@/components/DateReserve";
import { useSearchParams } from "next/navigation";
import { useState } from "react";
import dayjs, { Dayjs } from "dayjs";
import { useDispatch } from "react-redux";
import { AppDispatch } from "@/redux/store";
import { BookItem } from "../../../interface";
import { addBooking } from "@/redux/features/bookSlice";

export default function Booking() {
  // Get URL parameters
  const urlParams = useSearchParams();
  const id = urlParams.get('id');
  const name = urlParams.get('name');
  const surname = urlParams.get('surname');

  const dispatch = useDispatch<AppDispatch>();

  // Function to handle booking submission
  const makeBooking = () => {
    if (id && name && surname && bookDate) {
      const item: BookItem = {
        name: name,
        surname: surname,
        id: id,
        hospital: pickupHospital,
        bookDate: dayjs(bookDate).format("YYYY/MM/DD"),
      };

      console.log('id', id);
      // Dispatch the booking to Redux store
      dispatch(addBooking(item));
      alert("Vaccine booking successful!");
    } else {
      alert("Please fill in all required fields.");
    }
  };

  // State for date and hospital selection
  const [bookDate, setBookDate] = useState<Dayjs | null>(null);
  const [pickupHospital, setPickupHospital] = useState<string>('BKK');

  return (
    <main className="w-[100%] flex flex-col items-center space-y-4 m-5 p-5">
      <div className="w-fit space-y-2">
        <div className="text-md text-left text-gray-600">Pick-Up Date</div>
        <DateReserve
          onDateChange={(value: Dayjs | null) => setBookDate(value)} // Updates the date state
          onHospitalChange={(value: string) => setPickupHospital(value)}// Ensure hospital is set
        />
      </div>

      {/* <button
        name="Book Vaccine"
        className="block rounded-md bg-sky-600 hover:bg-indigo-600 px-3 py-2 text-white shadow-sm"
        onClick={makeBooking}>
        Book Vaccine
      </button> */}
    </main>
  );
}
