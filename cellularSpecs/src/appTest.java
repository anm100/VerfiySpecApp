import Model.MyCondition;
import Model.Screen;
import Model.StandartButtonType;


public class appTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		StandartButtonType s = new StandartButtonType();
		s.setTransition(new Screen("a"),new Screen("b"));
		for (int i=0 ; i<5;i++){
			
			s.getConds().add(new MyCondition(new String("val"+i),new String(""+i)));
			}
		System.out.println(s.getStringPromela());

	}

}
