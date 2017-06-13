package our.Utils;

import Controller.FormulaTranslate;
import Model.Action;
import Model.ElementType;
import Model.EmptyNEmptyType;
import Model.OnOffType;
import Model.Param;
import Model.Screen;
import Model.StandartButtonType;
import Model.WorkSpace;
public class BulidSpec2 {
	
	public static void main(String[] args) {
		FormulaTranslate.addtoScreenStates("BoPo_MainSreen");
		//FormulaTranslate.addtoScreenStates("CreateNewEvent");
		FormulaTranslate.addtoChangeStates("changeParamUserName");
		System.out.println(FormulaTranslate.getTranslateReq1());	
	}
}