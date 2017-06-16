package ToolGUI;
import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Dimension;
import javax.swing.*;
import javax.swing.table.*;

public class TableIcon extends JFrame {

    private static final long serialVersionUID = 1L;
    private JFrame frame = new JFrame ();
    private JTable table;
    private JLabel myLabel = new JLabel("waiting");
    private int pHeight = 40;
    private ImageIcon errorIcon = (ImageIcon) UIManager.getIcon("OptionPane.errorIcon");
    private ImageIcon infoIcon = (ImageIcon) UIManager.getIcon("OptionPane.informationIcon");
    private ImageIcon warnIcon = (ImageIcon) UIManager.getIcon("OptionPane.warningIcon");
    private ImageIcon questIcon = (ImageIcon) UIManager.getIcon("OptionPane.questionIcon");

    public TableIcon() {
        String[] columnNames = {"Picture", "Description"};
        Object[][] data = {{errorIcon, "About"}, {errorIcon, "Add"}, {errorIcon, "Copy"}, {errorIcon, "Copy"}};
        DefaultTableModel model = new DefaultTableModel(data, columnNames);
        table = new JTable(model) {
            private static final long serialVersionUID = 1L;

            @Override
            public Class getColumnClass(int column) {
                return getValueAt(0, column).getClass();
            }

            @Override
            public Component prepareRenderer(TableCellRenderer renderer, int row, int column) {
                Component comp = super.prepareRenderer(renderer, row, column);
                JLabel jc = (JLabel) comp;
                if (column == 0) {
                    if (isRowSelected(row) && isColumnSelected(column)) {
                        jc.setIcon(infoIcon);
                    } else if (isRowSelected(row) && !isColumnSelected(column)) {
                        jc.setIcon(warnIcon);
                    } else {
                        jc.setIcon(jc.getIcon());
                    }
                }
                return comp;
            }
        };
        table.setRowHeight(pHeight);
        table.setPreferredScrollableViewportSize(table.getPreferredSize());
        JScrollPane scrollPane = new JScrollPane(table);
        frame.add(scrollPane, BorderLayout.CENTER);
        myLabel.setPreferredSize(new Dimension(200, pHeight));
        myLabel.setHorizontalAlignment(SwingConstants.CENTER);
        frame.add(myLabel, BorderLayout.SOUTH);
        frame.setDefaultCloseOperation(EXIT_ON_CLOSE);
        frame.setLocation(150, 150);
        frame.pack();
        frame.setVisible(true);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {

            @Override
            public void run() {
                TableIcon frame = new TableIcon();
            }
        }); 
    }
}