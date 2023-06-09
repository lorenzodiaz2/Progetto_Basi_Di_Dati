import javax.swing.*;
import java.awt.*;

public class GetBigliettiForm extends JDialog {
  private JButton edizioneXXXButton;
  private JButton edizioneXXXIButton;
  private JButton edizioneXXXIIButton;
  private JButton indietroButton;
  private JPanel getBigliettiForm;
  User user;

  public GetBigliettiForm(JFrame parent, User user) {
    super(parent);
    setTitle("Login");
    setContentPane(getBigliettiForm);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    edizioneXXXButton.addActionListener(e -> {
      dispose();
      GetBigliettiEdizioneXXXForm.getBigliettiEdizioneXXX(user);
    });
    edizioneXXXIButton.addActionListener(e -> {
      dispose();
      GetBigliettiEdizioneXXXIForm.getBigliettiEdizioneXXXI(user);
    });
    edizioneXXXIIButton.addActionListener(e -> {
      dispose();
      GetBigliettiEdizioneXXXIIForm.getBigliettiEdizioneXXXII(user);
    });
    indietroButton.addActionListener(e -> {
      dispose();
      OperationForm.operation(user);
    });

    setVisible(true);
  }

  public static void getBiglietti(User user) {
    GetBigliettiForm getBigliettiForm = new GetBigliettiForm(null, user);
    user = getBigliettiForm.user;
  }
}