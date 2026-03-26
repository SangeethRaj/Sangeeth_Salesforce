/**
 * LESSON 29: THE SWITCHBOARD (MASTER TRIGGER)
 * This file is kept "Skinny." It only delegates work to the Handler.
 */

trigger LeadTrigger_Master on Lead (before insert, before update, after insert) 
{

    if (Trigger.isBefore && Trigger.isInsert) 
    {
        // We call the "Brain" (The Handler Class)
        LeadTriggerHandler.handleBeforeInsert(Trigger.new);
    }
    
    // Future Lesson: You can add Trigger.isAfter here later!
}
