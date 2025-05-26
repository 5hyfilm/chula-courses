"use client"
import { Rating } from "@mui/material";
import VideoPlayer from "@/components/VideoPlayer";
import { useState, useCallback } from "react";
import { useWindowListener } from "@/hooks/useWindowListener";

export default function PromoteCard() {
    const [playing, setPlaying] = useState(true);
    const [rating, setRating] = useState(0);
    const [pointerPosition, setPointerPosition] = useState({ x: 0, y: 0 });

    // Handle pointer move, cast event to PointerEvent
    const handlePointerMove = useCallback((e: Event) => {
        const pointerEvent = e as PointerEvent;  // Cast the generic Event to PointerEvent
        setPointerPosition({ x: pointerEvent.clientX, y: pointerEvent.clientY });
    }, []);

    // Prevent right-click context menu inside PromoteCard
    const preventContextMenu = useCallback((e: Event) => {
        e.preventDefault();
    }, []);

    // Use useWindowListener to listen to 'contextmenu' event and prevent it
    useWindowListener('contextmenu', preventContextMenu);

    // Listen to pointermove event
    useWindowListener('pointermove', handlePointerMove);

    return (
        <div className="w-[80%] shadow-lg mx-[10%] my-10 p-2 rounded-lg bg-gray-200 flex flex-row">
            <VideoPlayer vdoSrc="/vdo/getvaccine.mp4" isPlaying={playing} />
            <div className="m-5">
                Get your vaccine today. 
                {/* (X: {pointerPosition.x}, Y: {pointerPosition.y}) */}
                <button
                    className="block rounded-md bg-sky-600 hover:bg-indigo-600 px-3 py-2 text-white shadow-sm"
                    onClick={() => setPlaying(!playing)}
                >
                    {playing ? 'Pause' : 'Play'}
                </button>
                {/* <Rating
                    className="w-full h-[10%]"
                    value={rating}
                    onChange={(e, newValue) => {
                        if (newValue != null) setRating(newValue);
                    }}
                /> */}
            </div>
        </div>
    );
}
