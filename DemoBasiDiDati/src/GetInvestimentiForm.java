import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class GetInvestimentiForm extends JDialog {
  private JButton indietroButton;
  private JTable table1;
  private JPanel getInvestimentiPanel;
  User user;

  public GetInvestimentiForm(JFrame parent, User user) {
    super(parent);
    setTitle("Operazione getBiglietti");
    setContentPane(getInvestimentiPanel);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    String[][] dati = new String[3][4];
    getDati(dati);

    table1.setModel(new DefaultTableModel(dati, new String[]{"sxs", "sxc", "dxc", "dxd"}));

    indietroButton.addActionListener(e -> {
      dispose();
      OperationForm.operation(user);
    });

    setVisible(true);
  }

  private void getDati(String[][] dati) {
    OperationUtils.getInvestimenti(user, dati);
  }

  public static void getInvestimenti(User user) {
    GetInvestimentiForm getInvestimentiForm = new GetInvestimentiForm(null, user);
    user = getInvestimentiForm.user;
  }
}