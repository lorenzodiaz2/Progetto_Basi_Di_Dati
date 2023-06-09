import javax.swing.*;
import java.awt.*;
import java.sql.*;

public class OperationForm extends JDialog {
  private JButton getBigliettiButton;
  private JButton getMedagliereNazioniButton;
  private JButton getInvestimentiButton;
  private JButton getMiglioriAtletiButton;
  private JPanel operationPanel;
  private JButton indietroButton;
  public User user;


  public OperationForm(JFrame parent, User user) {
    super(parent);
    setTitle("Scegli l' operazione!");
    setContentPane(operationPanel);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;


    getBigliettiButton.addActionListener(e -> {
      dispose();
      GetBigliettiForm.getBiglietti(user);
    });

    getInvestimentiButton.addActionListener(e -> {
      dispose();
      GetInvestimentiForm.getInvestimenti(user);
    });

    getMiglioriAtletiButton.addActionListener(e -> {
      dispose();
      GetAtletiPremiatiForm.getMiglioriAtleti(user);
    });

    getMedagliereNazioniButton.addActionListener(e -> {
      dispose();
      GetMedagliereNazioniForm.getMedagliereNazioni(user);
    });

    indietroButton.addActionListener(e -> {
      dispose();
      LoginForm.main(null);
    });

    setVisible(true);
  }

  public static void operation(User user) {
    OperationForm operationForm = new OperationForm(null, user);
    user = operationForm.user;
  }
}
