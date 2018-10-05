trigger TestRecrutier on Position__c (before insert, after insert, before delete, after delete, before update, after update) 
{
	//before Insert Trigger
	if(Trigger.isInsert)
     {
       system.debug('before insert trigger executed');
     }
    //before update Trigger
	if(Trigger.isUpdate)
     {
       system.debug('before update trigger executed');
     }
    	//before Delete Trigger
	if(Trigger.isDelete)
     {
       system.debug('before delete trigger executed');
     }
}