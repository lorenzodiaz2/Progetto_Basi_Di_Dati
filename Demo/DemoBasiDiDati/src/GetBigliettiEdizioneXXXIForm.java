import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class GetBigliettiEdizioneXXXIForm extends JDialog {
  private JTable table1;
  private JPanel getBigliettiXXXIPanel;
  private JButton indietroButton;
  User user;

  public GetBigliettiEdizioneXXXIForm(JFrame parent, User user) {
    super(parent);
    setTitle("Operazione getBiglietti");
    setContentPane(getBigliettiXXXIPanel);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    String[][] dati = new String[8][2];
    getDati(dati);

    table1.setModel(new DefaultTableModel(dati, new String[]{"sx", "dx"}));

    indietroButton.addActionListener(e -> {
      dispose();
      GetBigliettiForm.getBiglietti(user);
    });

    setVisible(true);
  }


  public static void getBigliettiEdizioneXXXI(User user) {
    GetBigliettiEdizioneXXXIForm getBigliettiForm = new GetBigliettiEdizioneXXXIForm(null, user);
    user = getBigliettiForm.user;
  }

  private void getDati(String[][] dati) {
    OperationUtils.getBiglietti(user, "XXXI", dati);
  }
}