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

  private boolean controllaPermessi() {
    try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/giochi_olimpici", user.username, user.password)) {

      Statement statement = connection.createStatement();
      ResultSet resultSet = statement.executeQuery("show grants for '" + user.username + "'@'%'");
      int i = 0;
      String privilegio = "";
      while (resultSet.next()) {
        if (i == 1) {
          privilegio = resultSet.getString("Grants for " + user.username + "@%").split(" ")[1].toLowerCase();
        }
        i++;
      }
      if (!privilegio.equals("all")) {
        JOptionPane.showMessageDialog(OperationForm.this,
          "L'utente NON può eseguire l' operazione",
          "Riprova",
          JOptionPane.ERROR_MESSAGE);
        return false;
      }

      resultSet.close();
      statement.close();
    } catch (Exception e) {
      System.out.println(e);
    }
    return true;
  }

  public static void operation(User user) {
    OperationForm operationForm = new OperationForm(null, user);
    user = operationForm.user;
  }
}
