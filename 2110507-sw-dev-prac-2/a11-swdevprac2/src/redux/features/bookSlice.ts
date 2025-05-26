import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { BookItem } from "../../../interface";

type BookState = {
  bookItems: BookItem[];
};

const initialState: BookState = { bookItems: [] };

export const bookSlice = createSlice({
    name: "book",
    initialState,
    reducers: {
      addBooking: (state, action: PayloadAction<BookItem>) => {
        // Check if a booking with the same id already exists
        const exists = state.bookItems.some(item => item.id === action.payload.id);
        if (!exists) {
          state.bookItems.push(action.payload);
        }
      },
      removeBooking: (state, action: PayloadAction<string>) => {
        state.bookItems = state.bookItems.filter(item => item.id !== action.payload);
      },
    },
  });
  

export const { addBooking, removeBooking } = bookSlice.actions;
export default bookSlice.reducer;
