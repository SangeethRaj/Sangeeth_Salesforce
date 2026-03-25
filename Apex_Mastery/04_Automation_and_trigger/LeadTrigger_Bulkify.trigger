/* ==========================================
   LESSON 27: BULKIFICATION (ANTI-DUPLICATE)
   ==========================================
   🎯 THE GOAL: 
   Check for duplicates WITHOUT hitting 
   Governor Limits.
========================================== */

trigger LeadTrigger on Lead (before insert, before update) {

    // 1. COLLECT: Get all incoming emails into a "Bucket"
    Set<String> incomingEmails = new Set<String>();
    for (Lead ld : Trigger.new) 
   {
        if (ld.Email != null) 
         {
            incomingEmails.add(ld.Email);
         }
    }

    // 2. QUERY: One single trip to the database to find matching Contacts

    // This is the "Bulkified" move that prevents Governor Limit errors.

    List<Contact> existingContacts = [SELECT Email FROM Contact WHERE Email IN :incomingEmails];

    // 3. ORGANIZE: Put those Contacts into a Map for lightning-fast searching

    // Key = Email String, Value = The Contact Record

    Map<String, Contact> emailToContactMap = new Map<String, Contact>();

    for (Contact con : existingContacts) 
    {
        emailToContactMap.put(con.Email, con);
    }

    // 4. COMPARE & BLOCK: The Final Security Check

    for (Lead ld : Trigger.new) 
    {
        // Check if the Lead's email exists as a Key in our Map

        if (ld.Email != null && emailToContactMap.containsKey(ld.Email)) 
            {
            
            // STOP the save and show the error message

            ld.addError('❌ Duplicate Found: A Contact with the email ' + ld.Email + ' already exists in the system.');
           }
    }
}
