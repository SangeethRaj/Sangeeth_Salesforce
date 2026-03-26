trigger LeadTrigger on Lead (before insert, after update) 
{
	if (trigger.isBefore)
    {
        if(trigger.isInsert)
        {
            LeadTriggerHandler.HandleBeforeInsert(Trigger.New);
        }
    }
    
    if (trigger.isAfter)
    {
        if(trigger.isUpdate)
        {
            LeadTriggerHandler.HandleAfterInsert(Trigger.New);
        }
    }
    
}
