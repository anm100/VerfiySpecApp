package Model;

import java.io.FileReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import Controller.Router;

public class RequirementList {
	
	private List <Requirement> reqlist = new ArrayList<Requirement>();

 public void addRequirement(Requirement r){
	 this.reqlist.add(r); 
 }
 
 public void removeRequirement(Requirement r){
	 this.reqlist.remove(r); 
 }

public List<Requirement> getReqlist() {
	return reqlist;
}
public  void loadreqs() {
	   JSONParser parser = new JSONParser();
     try {
         Object obj = parser.parse(new FileReader("Config.txt"));
         JSONObject jsonObject = (JSONObject) obj;

         JSONArray Reqiuriements = (JSONArray) jsonObject.get("Reqiuriement_List");

         Iterator<JSONObject> iterator = Reqiuriements.iterator();
         while (iterator.hasNext()) {
         	JSONObject j=iterator.next();
         	Requirement r = new Requirement((String)j.get("ID"),(String)j.get("name")
         			,(String)j.get("formula"));
         	addRequirement(r);
			WorkSpace.getLog().debug((String)j.get("name"));
         }

     } catch (Exception e) {
         e.printStackTrace();
     }
  
 }


}