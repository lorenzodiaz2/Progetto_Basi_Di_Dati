import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class GetMedagliereNazioniXXXForm extends JDialog {
  private JButton indietroButton;
  private JTable table1;
  private JPanel getMedagliereNazioniXXX;
  User user;

  public GetMedagliereNazioniXXXForm(JFrame parent, User user) {
    super(parent);
    setTitle("Operazione getBiglietti");
    setContentPane(getMedagliereNazioniXXX);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    String[][] dati = new String[4][2];
    getDati(dati);

    table1.setModel(new DefaultTableModel(dati, new String[]{"sx", "dx"}));

    indietroButton.addActionListener(e -> {
      dispose();
      GetMedagliereNazioniForm.getMedagliereNazioni(user);
    });

    setVisible(true);
  }

  private void getDati(String[][] dati) {
    OperationUtils.getMedagliereNazioni(user, "XXX", dati);
  }

  public static void getMedagliereNazioniXXX(User user) {
    GetMedagliereNazioniXXXForm getMedagliereNazioniXXXForm = new GetMedagliereNazioniXXXForm(null, user);
    user = getMedagliereNazioniXXXForm.user;
  }
}