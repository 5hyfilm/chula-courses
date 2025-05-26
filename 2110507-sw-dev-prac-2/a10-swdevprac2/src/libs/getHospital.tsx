export default async function getHospital(id: string) {
    const response = await fetch(`https://a09-swdevprac2-seven.vercel.app/api/v1/hospitals/${id}`)
    if (!response.ok) {
        throw new Error("Failed to fetch getHospital")
    }

    return await response.json()
}