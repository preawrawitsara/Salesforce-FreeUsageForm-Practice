public class FreeUsageFormController {
	public results {get; set;}
    
    public FreeUsageFormController(){
        ID id = ApexPages.currentPage().getParameters().get('');
        results = (id == null) ? new () :
        	[SELECT];
    }
    
    public PageReference save(){
        try {
            
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }        
        PageReference pageRef = new PageReference('/apex/FreeUsageList');
        return pageRef;
    }
}