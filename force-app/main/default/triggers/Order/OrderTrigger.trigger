trigger OrderTrigger on Order (before update) {
   
    System.debug('Order Trigger Start => ' + Trigger.operationType);
   
    OrderTriggerHandler handler = new OrderTriggerHandler(
        Trigger.old,
        Trigger.new,
        Trigger.oldMap,
        Trigger.newMap
    );

    if(OrderTriggerHandler.isTriggerEnabled()){
    
        switch on Trigger.operationType {
    
            /*when BEFORE_INSERT{
    
                handler.BeforeInsert();
    
            }*/
        
            when BEFORE_UPDATE{
        
                handler.beforeUpdate();
        
            }
        }
    }
}