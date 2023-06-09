import javax.swing.*;
import java.awt.*;
import java.sql.*;

public class LoginForm extends JDialog {
  private JTextField tfUsername;
  private JPasswordField pfPassword;
  private JButton btnOK;
  private JButton btnCancel;
  private JPanel loginPanel;

  public User user;


  public LoginForm(JFrame parent) {
    super(parent);
    setTitle("Login");
    setContentPane(loginPanel);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);


    btnOK.addActionListener(e -> {
      String username = tfUsername.getText();
      String password = String.valueOf(pfPassword.getPassword());

      User user = getAuthenticatedUser(username, password);

      if (user != null) {
        dispose();
        OperationForm.operation(user);
      } else {
        JOptionPane.showMessageDialog(LoginForm.this,
          "Username o Password Invalide",
          "Riprova",
          JOptionPane.ERROR_MESSAGE);
      }
    });

    btnCancel.addActionListener(e -> dispose());

    setVisible(true);

  }


  private User getAuthenticatedUser(String username, String password) {
    user = null;

    final String DB_URL = "jdbc:mysql://localhost:3306/giochi_olimpici";

    try (Connection conn = DriverManager.getConnection(DB_URL, username, password)) {

      Statement stmt = conn.createStatement();
      String sql = "SELECT * FROM users WHERE username=? AND password=?";
      PreparedStatement preparedStatement = conn.prepareStatement(sql);
      preparedStatement.setString(1, username);
      preparedStatement.setString(2, password);

      ResultSet resultSet = preparedStatement.executeQuery();

      if (resultSet.next()) {
        user = new User();
        user.username = resultSet.getString("username");
        user.password = resultSet.getString("password");
      }

      stmt.close();

    } catch (Exception e) {
      e.printStackTrace();
    }
    return user;
  }

  public static void main(String[] args) {
    LoginForm loginForm = new LoginForm(null);
    User user = loginForm.user;
  }
}