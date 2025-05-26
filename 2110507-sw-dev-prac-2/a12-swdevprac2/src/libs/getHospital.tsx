export default async function getHospital(id:string) {
    const response = await fetch(`https://2110507-vaccine-app-backend-eight.vercel.app/api/v1/hospitals/${id}`)

    if(!response.ok) throw new Error("fail")
    return await response.json()
}