/* ==========================================
   LESSON 28: THE "AFTER" TRIGGER (AUTOMATION)
   ==========================================
   CONTEXT: after insert
   
   🎯 THE GOAL: 
   Every time a Lead is successfully saved, automatically 
   create a Task for the owner to follow up.
   
   REQUIREMENT: 
   1. Update Trigger Header: Add 'after insert' to the events.
   2. Logic Guard: Wrap your code in 'if (Trigger.isAfter && Trigger.isInsert)'.
   3. Create a List: List<Task> taskList = new List<Task>();
   4. Loop: Iterate through Trigger.new.
   5. New Task Details:
      - Subject = 'Follow up with ' + ld.LastName
      - WhoId = ld.Id (This links the Task to the Lead)
      - Status = 'Not Started'
      - Priority = 'Normal'
   6. Add to List: taskList.add(newTask);
   7. DML: Insert the list OUTSIDE the loop.
   
   🚀 WHY "AFTER"? 
   We need the Lead's 'Id' to link the Task. In a 'before' 
   trigger, the Lead doesn't have an Id yet!
========================================== */

trigger LeadTrigger on Lead (before insert, before update, after insert) {
    
    if (Trigger.isBefore) 
    {
        for (Lead ld : Trigger.new) 
        {
            if (ld.Industry == null) 
            { 
                ld.Industry = 'Education'; 
            }
            if (ld.Email == null) 
            { 
                ld.addError('Email is required.');
            }
        }
    }
    
    // --- LESSON 28: THE AFTER TRIGGER ---
    if (Trigger.isAfter && Trigger.isInsert) 
    {
        List<Task> newTasks = new List<Task>(); // Fixed: Added missing )
        
        for (Lead ld : Trigger.new) 
        {
            Task currentTask = new Task();
            
            // Fixed: Added 'currentTask.' before each field
            currentTask.Subject = 'Call new Lead: ' + ld.LastName;
            currentTask.WhoId = ld.Id; // The Lead ID exists now because we are in "After"
            currentTask.OwnerId = ld.OwnerId;
            currentTask.Status = 'Not Started'; // Changed to 'Not Started' so it shows up in their To-Do list
            currentTask.Priority = 'Normal'; // Fixed: Added single quotes
            
            newTasks.add(currentTask);
        }
        
        // STEP 5: Bulkified Insert (Lesson 24 skill!)
        
        if (!newTasks.isEmpty()) 
        {
            insert newTasks;
        }
    }
}
