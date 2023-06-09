import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class GetMedagliereNazioniXXXIForm extends JDialog {
  private JButton indietroButton;
  private JTable table1;
  private JPanel getMedagliereNazioneXXXI;
  User user;

  public GetMedagliereNazioniXXXIForm(JFrame parent, User user) {
    super(parent);
    setTitle("Operazione getBiglietti");
    setContentPane(getMedagliereNazioneXXXI);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    String[][] dati = new String[7][2];
    getDati(dati);

    table1.setModel(new DefaultTableModel(dati, new String[]{"sx", "dx"}));

    indietroButton.addActionListener(e -> {
      dispose();
      GetMedagliereNazioniForm.getMedagliereNazioni(user);
    });

    setVisible(true);
  }

  private void getDati(String[][] dati) {
    OperationUtils.getMedagliereNazioni(user, "XXXI", dati);
  }

  public static void getMedagliereNazioniXXXI(User user) {
    GetMedagliereNazioniXXXIForm getMedagliereNazioniXXXIForm = new GetMedagliereNazioniXXXIForm(null, user);
    user = getMedagliereNazioniXXXIForm.user;
  }
}
