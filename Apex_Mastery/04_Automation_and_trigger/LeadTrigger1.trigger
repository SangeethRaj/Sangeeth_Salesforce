/* ==========================================
   LESSON 25: THE AUTO-SETTER TRIGGER
   ==========================================
   OBJECT: Lead
   EVENT: before insert
   
   🎯 THE GOAL: 
   Automate a field value so the user doesn't 
   have to type it.
   
   REQUIREMENT: 
   1. Create a Trigger on the 'Lead' object.
   2. Use the 'before insert' event.
   3. Loop through 'Trigger.new' (The list of leads 
      the user is trying to save).
   4. If 'ld.Industry' is null:
      - Set 'ld.Industry = 'Education';
========================================== */

trigger LeadTrigger on Lead (before insert) 
{
    for (Lead ld : Trigger.new) 
    {
      if (ld.Industry == null)
          {
            ld.Industry = 'Educational';
          }
    }
}
