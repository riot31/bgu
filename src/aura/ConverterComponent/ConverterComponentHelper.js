({
	sendRequest : function(component) {
		var action = component.get("c.convert");	
        
        action.setParams({
            value:component.get('v.value'), 
            fromV:component.get('v.fromV'),
            toV:component.get('v.toV')
        });
        
		action.setCallback(this, function(response){
			var state = response.getState();
			if(state === 'SUCCESS'){
				component.set('v.result', response.getReturnValue());
            }
        });	
		$A.enqueueAction(action);
	}
})