import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;

public class GetBigliettiEdizioneXXXForm extends JDialog {
  private JTable table1;
  private JButton indietroButton;
  private JPanel getBigliettiXXXPanel;
  User user;

  public GetBigliettiEdizioneXXXForm(JFrame parent, User user) {
    super(parent);
    setTitle("Operazione getBiglietti");
    setContentPane(getBigliettiXXXPanel);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    String[][] dati = new String[13][2];
    getDati(dati);

    table1.setModel(new DefaultTableModel(dati, new String[]{"sx", "dx"}));

    indietroButton.addActionListener(e -> {
      dispose();
      GetBigliettiForm.getBiglietti(user);
    });

    setVisible(true);
  }


  public static void getBigliettiEdizioneXXX(User user) {
    GetBigliettiEdizioneXXXForm getBigliettiForm = new GetBigliettiEdizioneXXXForm(null, user);
    user = getBigliettiForm.user;
  }

  private void getDati(String[][] dati) {
    OperationUtils.getBiglietti(user, "XXX", dati);
  }
}