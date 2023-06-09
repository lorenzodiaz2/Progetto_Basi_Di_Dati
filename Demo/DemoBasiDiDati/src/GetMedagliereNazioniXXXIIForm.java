import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class GetMedagliereNazioniXXXIIForm extends JDialog {
  private JButton indietroButton;
  private JTable table1;
  private JPanel getMedagliereNazioniXXXII;
  User user;

  public GetMedagliereNazioniXXXIIForm(JFrame parent, User user) {
    super(parent);
    setTitle("Operazione getBiglietti");
    setContentPane(getMedagliereNazioniXXXII);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    String[][] dati = new String[5][2];
    getDati(dati);

    table1.setModel(new DefaultTableModel(dati, new String[]{"sx", "dx"}));

    indietroButton.addActionListener(e -> {
      dispose();
      GetMedagliereNazioniForm.getMedagliereNazioni(user);
    });

    setVisible(true);
  }

  private void getDati(String[][] dati) {
    OperationUtils.getMedagliereNazioni(user, "XXXII", dati);
  }

  public static void getMedagliereNazioniXXXII(User user) {
    GetMedagliereNazioniXXXIIForm getMedagliereNazioniXXXIIForm = new GetMedagliereNazioniXXXIIForm(null, user);
    user = getMedagliereNazioniXXXIIForm.user;
  }
}
