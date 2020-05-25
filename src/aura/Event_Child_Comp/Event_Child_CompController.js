({
	invoke : function(component, event, helper) {
        var evt = component.getEvent('myEvent');
        evt.setParams({'empName': 'Satish Myia'});
		evt.fire();        
		
	}
})