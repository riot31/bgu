({
    selectFrom : function(component, event, helper) {
        var value = component.get('v.fromV');
        var newList = component.get('v.defaultList');
        newList = newList.join(';').replace(value + ';','').replace(';' + value,'').split(';');
        component.set('v.toList', newList);
    },
    
    selectTo : function(component, event, helper) {
        var value = component.get('v.toV');
        var newList = component.get('v.defaultList');
        newList = newList.join(';').replace(value + ';','').replace(';' + value,'').split(';');
        component.set('v.fromList', newList);
    },
    
    
    submit : function(component, event, helper) {
        var isValid = true;
        var validityFields = component.find('field');
        for (var y = 0; y < validityFields.length; y++) {
            if (validityFields[y].get("v.validity").valid === false) {
                isValid = false;
                validityFields[y].showHelpMessageIfInvalid();
            }
        }
        if(isValid === true) {
        	helper.sendRequest(component);            
        }	
    },   
    
})