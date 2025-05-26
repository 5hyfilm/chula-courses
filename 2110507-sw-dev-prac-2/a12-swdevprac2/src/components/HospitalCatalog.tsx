import Card from './Card';
import Link from 'next/link';
import { HospitalJson, HospitalItem } from '../../interface';

export default async function HospitalCatalog({ hospitalsJson }: { hospitalsJson: Promise<HospitalJson> }) {
  // Wait for the Promise to resolve before accessing the data
  const hospitalsJsonReady = await hospitalsJson;

  return (
    <>
      {/* Header section */}
      <h2>
        Explore {hospitalsJsonReady.count} hospitals in our catalog
      </h2>

      {/* Layout for hospital cards */}
      <div
        style={{
          margin: '20px',
          display: 'flex',
          flexDirection: 'row',
          flexWrap: 'wrap',
          justifyContent: 'space-around',
          alignContent: 'space-around',
        }}
      >
        {/* Mapping through hospitals data and rendering a Card for each hospital */}
        {hospitalsJsonReady.data.map((hospitalItem: HospitalItem) => (
          <Link href={`/hospital/${hospitalItem.id}`} className="w-1/5" key={hospitalItem.id}>
            <Card
              hospitalName={hospitalItem.name}   
              imgSrc={hospitalItem.picture}      
              // rating={0} // Optional: Uncomment if needed, or dynamically pass rating when applicable
            />
          </Link>
        ))}
      </div>
    </>
  );
}
