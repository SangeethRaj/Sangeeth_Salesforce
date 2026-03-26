/* ==========================================
   LESSON 24: EMPTY LIST PROTECTION
   ==========================================
   🎯 THE CHALLENGE:
   Query for a Lead that doesn't exist. 
   Check if the list is empty before touching it.
   
   REQUIREMENT: 
   1. Query: List<Lead> mysteryLeads = [SELECT Id FROM Lead WHERE Name = 'Batman'];
   2. Logic: Use an 'if' statement with '.isEmpty()'.
   3. If NOT empty (!mysteryLeads.isEmpty()):
      - Debug "Batman found!"
   4. Else:
      - Debug "No Batmen in the database."
========================================== */

List<Lead> mysteryLeads = [SELECT Id FROM Lead WHERE Name = 'Batman'];

if ( !mysteryLeads.isEmpty() )
  {
      System.debug ('Batman Found');
  }
  else 
  {
      System.debug ('No Batmen in the database.');
  }

