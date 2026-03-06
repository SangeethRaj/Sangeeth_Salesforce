/* ==========================================
   LESSON 4: LOGICAL OPERATORS (VIP LOUNGE)
   ==========================================
   REQUIREMENT: 
   The club has opened a special "Gold Room." 
   To get into the Gold Room, a guest must meet TWO conditions:
   1. They must be 21 years of age or older.
   2. THEY MUST also have a Boolean variable 'hasGoldTicket' set to true.
   
   Write the Apex code to:
   1. Create an Integer 'age' set to 25.
   2. Create a Boolean 'hasGoldTicket' set to false.
   3. Use an IF statement with the AND (&&) operator to check both conditions.
   4. If both are true, print: "Welcome to the Gold Room!"
   5. Otherwise, print: "You do not meet the requirements for the Gold Room."
========================================== */

Integer age = 25;
Boolean hasGoldTicket = false;

if (age >= 21 && hasGoldTicket == true) 
{
    System.debug('Welcome to the Gold Room!');
} 
else 
{
    System.debug('You do not meet the requirements for the Gold Room.');
}

/* ==========================================
   EXPECTED OUTPUT:
   You do not meet the requirements for the Gold Room.
   
   REASONING:
   Even though the age (25) is greater than 21, the 'hasGoldTicket' 
   is false. Since the && (AND) operator requires BOTH to be true, 
   the 'else' block runs.
========================================== */
