import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class GetBigliettiEdizioneXXXIIForm extends JDialog {
  private JTable table1;
  private JButton indietroButton;
  User user;
  private JPanel getBigliettiXXXIIPanel;

  public GetBigliettiEdizioneXXXIIForm(JFrame parent, User user) {
    super(parent);
    setTitle("Operazione getBiglietti");
    setContentPane(getBigliettiXXXIIPanel);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    String[][] dati = new String[25][2];
    getDati(dati);

    table1.setModel(new DefaultTableModel(dati, new String[]{"sx", "dx"}));

    indietroButton.addActionListener(e -> {
      dispose();
      GetBigliettiForm.getBiglietti(user);
    });

    setVisible(true);
  }


  public static void getBigliettiEdizioneXXXII(User user) {
    GetBigliettiEdizioneXXXIIForm getBigliettiForm = new GetBigliettiEdizioneXXXIIForm(null, user);
    user = getBigliettiForm.user;
  }

  private void getDati(String[][] dati) {
    OperationUtils.getBiglietti(user, "XXXII", dati);
  }
}