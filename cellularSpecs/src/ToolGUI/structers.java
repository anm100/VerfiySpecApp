package ToolGUI;

import java.util.HashMap;

public class structers {
	
	public  HashMap<String, Object> hmap ;

	public structers() {
		super();
		this.hmap = new HashMap<String, Object>();
	}

	public HashMap<String, Object> getHmap() {
		return hmap;
	}

	public void addElement(String id, Object value) {
		this.hmap.put(id,value);
	}
	
	public Object getElement(String id){
	
	return (Object) this.hmap.get(id);
	}
	

}
