/* ==========================================
   LESSON 1: VARIABLES & MATH (COFFEE SHOP)
   ==========================================
   REQUIREMENT: 
   You are writing the checkout logic for a coffee shop. 
   A customer orders a coffee ($4.00) and a pastry ($3.50). 
   They hand you a $10.00 bill. 
   
   Write the Apex code to:
   1. Store the prices of the items.
   2. Calculate the total cost of the order.
   3. Calculate the change due to the customer.
   4. Print the final result to the debug log in this exact format: "Your change is: $2.50"
========================================== */

Decimal coffeePrice = 4.00;
Decimal pastryPrice = 3.50;

Decimal totalCost = coffeePrice + pastryPrice;

Decimal amountCollected = 10.00;
Decimal amountDue = amountCollected - totalCost;

System.debug('Your change is: $' + amountDue);
