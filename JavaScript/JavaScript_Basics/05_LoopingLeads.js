// 1. Use the 'leads' array you created in Challenge 4.
// 2. Use a 'forEach' loop to go through each lead.
// 3. Inside the loop, print: "Processing lead for [Company Name]"

// HINT: leads.forEach(ld => { ... });

const leadList = [

  {
    firstName: 'Sangeeth',
    company: 'Dotts'
  },
  {
    firstName: 'Sangeeth1',
    company: 'Dotts1'
  },
  ];

for ( const ld of leadList )
{
  console.log(ld.company);
}

leadList.forEach ( ld => { console.log(ld.company); } );
