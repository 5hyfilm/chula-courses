'use client';
import React, { useState } from 'react';
import { DatePicker } from "@mui/x-date-pickers";
import { LocalizationProvider } from "@mui/x-date-pickers";
import { AdapterDayjs } from "@mui/x-date-pickers/AdapterDayjs";
import { Select, MenuItem, TextField, Button, FormControl, InputLabel } from "@mui/material";
import { Dayjs } from 'dayjs';
import { useDispatch } from 'react-redux';
import { addBooking } from '@/redux/features/bookSlice'; // Adjust the import path accordingly

export default function DateReserve({onDateChange, onHospitalChange}
    : {onDateChange:Function, onHospitalChange:Function}) {
  const [name, setName] = useState('');
  const [lastname, setLastname] = useState('');
  const [citizenId, setCitizenId] = useState('');
  const [hospital, setHospital] = useState('');
  const [reserveDate, setReserveDate] = useState<Dayjs | null>(null);
  
  const dispatch = useDispatch();

  const handleBookingSubmit = () => {
    if (!name || !lastname || !citizenId || !hospital || !reserveDate) {
      alert("Please fill out all fields");
      return;
    }

    // Dispatch the booking details to Redux store
    dispatch(addBooking({
      name,
      surname: lastname,
      id: citizenId, // Generating an ID, you can replace this with a real ID if needed
      hospital,
      bookDate: reserveDate?.format("YYYY/MM/DD") || '',
    }));

    alert("Vaccine booking successful!");
  };

  return (
    <div className="bg-slate-100 rounded-lg p-10 w-96 mx-auto">
      <form className="space-y-6" onSubmit={(e) => { e.preventDefault(); handleBookingSubmit(); }}>
        <TextField
          fullWidth
          variant="standard"
          name="Name"
          label="Name"
          value={name}
          onChange={(e) => setName(e.target.value)}
        />

        <TextField
          fullWidth
          variant="standard"
          name="Lastname"
          label="Lastname"
          value={lastname}
          onChange={(e) => setLastname(e.target.value)}
        />

        <TextField
          fullWidth
          variant="standard"
          name="Citizen ID"
          label="Citizen ID"
          value={citizenId}
          onChange={(e) => setCitizenId(e.target.value)}
        />

        <FormControl fullWidth variant="standard">
          <InputLabel id="hospital-label">Hospital</InputLabel>
          <Select
            labelId="hospital-label"
            id="hospital"
            value={hospital}
            onChange={(e) => setHospital(e.target.value as string)}
          >
            <MenuItem value="Chula">Chulalongkorn Hospital</MenuItem>
            <MenuItem value="Rajavithi">Rajavithi Hospital</MenuItem>
            <MenuItem value="Thammasat">Thammasat University Hospital</MenuItem>
          </Select>
        </FormControl>

        <LocalizationProvider dateAdapter={AdapterDayjs}>
          <DatePicker
            label="Select Date"
            value={reserveDate}
            onChange={(date) => setReserveDate(date)}
          />
        </LocalizationProvider>

        <Button type="submit" variant="contained" color="primary" fullWidth>
          Book Vaccine
        </Button>
      </form>
    </div>
  );
}
