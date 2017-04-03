package ToolGUI;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;

public class SubmenuEx extends JFrame {
	 public SubmenuEx() {

	        initUI();
	    }

	    private void initUI() {

	        createMenuBar();

	        setTitle("Submenu");
	        setSize(360, 250);
	        setLocationRelativeTo(null);
	        setDefaultCloseOperation(EXIT_ON_CLOSE);
	    }
	    private void createMenuBar() {

	        JMenuBar menubar = new JMenuBar();


	        JMenu fileMenu = new JMenu("File");

	        JMenu impMenu = new JMenu("Import");

	        JMenuItem newsfMi = new JMenuItem("Import newsfeed list...");
	        JMenuItem bookmMi = new JMenuItem("Import bookmarks...");
	        JMenuItem mailMi = new JMenuItem("Import mail...");

	        impMenu.add(newsfMi);
	        impMenu.add(bookmMi);
	        impMenu.add(mailMi);

	        JMenuItem newMi = new JMenuItem("New");
	        JMenuItem openMi = new JMenuItem("Open");
	        JMenuItem saveMi = new JMenuItem("Save");

	        JMenuItem exitMi = new JMenuItem("Exit");
	        exitMi.setToolTipText("Exit application");

	        exitMi.addActionListener((ActionEvent event) -> {
	            System.exit(0);
	        });

	        fileMenu.add(newMi);
	        fileMenu.add(openMi);
	        fileMenu.add(saveMi);
	        fileMenu.addSeparator();
	        fileMenu.add(impMenu);
	        fileMenu.addSeparator();
	        fileMenu.add(exitMi);

	        menubar.add(fileMenu);

	        setJMenuBar(menubar);
	    }
	    public static void main(String[] args) {

	        EventQueue.invokeLater(() -> {
	            SubmenuEx ex = new SubmenuEx();
	            ex.setVisible(true);
	        });
	    }

}



