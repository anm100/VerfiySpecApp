import Model.MyCondition;
import Model.Screen;
import Model.StandartButtonType;


public class appTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		StandartButtonType s;
		Screen screen= new Screen("a");
	 for(int j=0; j<5;j++){
		s = new StandartButtonType();
		s.setTransition(screen,new Screen("b"));

		for (int i=0 ; i<5;i++){
			s.setParamName("a"+i);
			s.getConds().add(new MyCondition(new String("val"+i),new String(""+i)));
			}
		screen.addElement(s.getParamName()+j, s);
	 }
			System.out.println(screen.getStringPromela());
			System.out.println(screen.getStringPromela());
			System.out.println(screen.getStringPromela());

			
	}

}
