({
	callMe : function(component, event, helper) {
        var evt = $A.get("e.c:Event_One");
        evt.setParams({"empName": "satish", "city": "hyd"});
		evt.fire();
	}
})