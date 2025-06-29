import LocationDateReserve from "@/components/LocationDateReserve";

export default function Reservations () {
    return (
        <main className="w-[100%] flex flex-col item-center space-y-4">
            <div className="text-xl font-medium">New Reservation</div>
            
            <div className="w-fit space-y-2">
                <div className="text-md text-left text-gray-600">Pick-Up Date</div>
                <LocationDateReserve/>
                <div className="text-md text-left text-gray-600">Return Date</div>
                <LocationDateReserve/>
            </div>

            <button className="block rounded-md bg-sky-600 hover:bg-indigo-600 px-3 py-2
            text-white shadow-sm">
                Check Hospital Availability
            </button>

        </main>
    );
}