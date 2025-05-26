'use client'
import React, { useState } from 'react';
import { DatePicker } from "@mui/x-date-pickers";
import { LocalizationProvider } from "@mui/x-date-pickers";
import { AdapterDayjs } from "@mui/x-date-pickers/AdapterDayjs";
import { Select, MenuItem, TextField, SelectChangeEvent, Button, Box, FormControl, InputLabel } from "@mui/material";

export default function DateReserve() {
    const [hospital, setHospital] = useState<string>(''); // Initialize state for Select

    const handleHospitalChange = (event: SelectChangeEvent<string>) => {
        setHospital(event.target.value as string);
    };

    return (
        <div className="bg-slate-100 rounded-lg p-10 w-96 mx-auto">
            <form className="space-y-6">
                <TextField 
                    fullWidth
                    variant="standard" 
                    name="Name-Lastname" 
                    label="Name-Lastname" 
                />

                <TextField 
                    fullWidth
                    variant="standard" 
                    name="Citizen ID" 
                    label="Citizen ID" 
                />

                <FormControl fullWidth variant="standard">
                    <InputLabel id="hospital-label">Hospital</InputLabel>
                    <Select
                        labelId="hospital-label"
                        id="hospital"
                        value={hospital}
                        onChange={handleHospitalChange}
                    >
                        <MenuItem value="Chula">Chulalongkorn Hospital</MenuItem>
                        <MenuItem value="Rajavithi">Rajavithi Hospital</MenuItem>
                        <MenuItem value="Thammasat">Thammasat University Hospital</MenuItem>
                    </Select>
                </FormControl>

                <LocalizationProvider dateAdapter={AdapterDayjs}>
                    <DatePicker 
                        label="Select Date"
                    />
                </LocalizationProvider>
            </form>
        </div>
    );
}
