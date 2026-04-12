// 1. Create a CONSTANT called 'leadId' and give it a value 'L-100'
// 2. Create a LET variable called 'status' and give it a value 'New'
// 3. On the next line, change 'status' to 'Contacted'
// 4. Try to change 'leadId' to 'L-200' and see what happens in the console

const leadId = 'L-100';
let status = 'New';
let status = 'Contacted';

const leadId = 'L-200'; //This line will cause an ERROR because you cannot re-assign a const.

console.log(status); //output: Contacted
console.log(leadId); //output: L-100
