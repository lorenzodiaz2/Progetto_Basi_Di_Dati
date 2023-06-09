import javax.swing.*;
import java.awt.*;

public class GetMedagliereNazioniForm extends JDialog {
  private JButton edizioneXXXButton;
  private JButton edizioneXXXIButton;
  private JButton edizioneXXXIIButton;
  private JButton indietroButton;
  private JPanel getMedagliereNazioniPanel;
  User user;

  public GetMedagliereNazioniForm(JFrame parent, User user) {
    super(parent);
    setTitle("Scegli l' operazione!");
    setContentPane(getMedagliereNazioniPanel);
    setMinimumSize(new Dimension(450, 474));
    setModal(true);
    setLocationRelativeTo(parent);
    setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    this.user = user;

    edizioneXXXButton.addActionListener(e -> {
      dispose();
      GetMedagliereNazioniXXXForm.getMedagliereNazioniXXX(user);
    });

    edizioneXXXIButton.addActionListener(e -> {
      dispose();
      GetMedagliereNazioniXXXIForm.getMedagliereNazioniXXXI(user);
    });

    edizioneXXXIIButton.addActionListener(e -> {
      dispose();
      GetMedagliereNazioniXXXIIForm.getMedagliereNazioniXXXII(user);
    });

    indietroButton.addActionListener(e -> {
      dispose();
      OperationForm.operation(user);
    });

    setVisible(true);
  }

  public static void getMedagliereNazioni(User user) {
    GetMedagliereNazioniForm getMedagliereNazioniForm = new GetMedagliereNazioniForm(null, user);
    user = getMedagliereNazioniForm.user;
  }
}