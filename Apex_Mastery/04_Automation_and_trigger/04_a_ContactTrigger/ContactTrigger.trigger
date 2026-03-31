trigger ContactTrigger on Contact (before insert) 
{
	if (trigger.isBefore)
    {
        if(trigger.isInsert)
        {
            ContactTriggerHandler.HandleBeforeInsert(Trigger.New);
        }
    }
}
