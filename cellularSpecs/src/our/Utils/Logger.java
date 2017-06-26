package our.Utils;

public class Logger {

	private  boolean isDebug ;

	public Logger() {
	}
	
	public boolean isDebug() {
		return isDebug;
	}

	public void log(String message) {
		System.out.println(message);
	}

	public void error(String message) {
		log("-ERROR: " + message);
	}

	public void info(String message) {
		log("" + message);
	}

	public void warning(String message) {
		log("Warn: " + message);
	}

	public void exception(Exception e) {
		error(e.getMessage());
		if (isDebug)
			e.printStackTrace();
	}

	public void debug(String message) {
		if (!isDebug)
			return;

		log("-DEBUG: " + message);
	}

	public  void setDebug(boolean sDebug) {
		isDebug = sDebug;
	}
	
}

