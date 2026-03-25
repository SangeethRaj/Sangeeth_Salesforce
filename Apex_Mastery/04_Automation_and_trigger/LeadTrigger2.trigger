/* ==========================================
   LESSON 26: THE GATEKEEPER (VALIDATION)
   ==========================================
   🎯 THE GOAL: 
   Prevent "bad data" from entering the system 
   by blocking the Save operation.
   
   HINT: 
   If you use ld.addError(), Salesforce will 
   stop the database transaction and show the 
   error to the user in RED.
========================================== */

trigger LeadTrigger on Lead (before insert, before update) {
    
    for (Lead ld : Trigger.new) {
        
        if (ld.Industry == null)
          {
            ld.Industry = 'Educational';
          }

        if (ld.Email == null)
          {
            ld.addError('STOP! You cannot save a Lead without an Email address.');
          }
        
    }
}
