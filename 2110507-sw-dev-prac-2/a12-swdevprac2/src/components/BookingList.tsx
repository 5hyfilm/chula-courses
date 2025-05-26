"use client";
import { useAppSelector, AppDispatch } from "@/redux/store";
import { useDispatch } from "react-redux";
import { removeBooking } from "@/redux/features/bookSlice";

export default function BookingList() {
    // Select bookItems from Redux state
    const bookItems = useAppSelector((state) => state.bookSlice.bookItems); // Adjusted the selector to use 'book'
    const dispatch = useDispatch<AppDispatch>();

    return (
        <div className="space-y-4">
            {bookItems.length === 0 ? (
                <div className="text-center text-xl">No Vaccine Booking</div>
            ) : (
                bookItems.map((bookItems) => (
                    <div className="bg-slate-200 rounded px-5 mx-5 py-4 my-2" key={bookItems.id}>
                        <div className="text-xl">Name: {bookItems.name}</div>
                        <div className="text-xl">Surname: {bookItems.surname}</div>
                        <div className="text-xl">Citizen ID: {bookItems.id}</div>
                        <div className="text-xl">Hospital: {bookItems.hospital}</div>
                        <div className="text-xl">Booking Date: {bookItems.bookDate}</div>

                        <button
                            name="remove"
                            className="block rounded-md bg-sky-600 hover:bg-indigo-600 px-3 py-2 text-white shadow-sm"
                            onClick={() => dispatch(removeBooking(bookItems.id))} // Pass only the ID
                        >
                            Remove Booking
                        </button>
                    </div>
                ))
            )}
        </div>
    );
}
