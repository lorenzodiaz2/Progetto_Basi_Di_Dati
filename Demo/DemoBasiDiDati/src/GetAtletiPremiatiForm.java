import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class GetAtletiPremiatiForm extends JDialog {
  private JTable table1;
  private JPanel getAtletiPremiatiPanel;
  private JButton indietroButton;
  User user;

  public GetAtletiPremiatiForm(JFrame parent, User user) {
    super(parent);
    setTitle("Operazione getBiglietti");
    setContentPane(getAtletiPremiatiPanel);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    String[][] dati = new String[19][4];
    getDati(dati);

    table1.setModel(new DefaultTableModel(dati, new String[]{"sxs", "sxc", "dxc", "dxd"}));

    indietroButton.addActionListener(e -> {
      dispose();
      OperationForm.operation(user);
    });

    setVisible(true);
  }

  private void getDati(String[][] dati) {
    OperationUtils.getAtletiPremiati(user, dati);
  }

  public static void getMiglioriAtleti(User user) {
    GetAtletiPremiatiForm getAtletiPremiatiForm = new GetAtletiPremiatiForm(null, user);
    user = getAtletiPremiatiForm.user;
  }
}