import java.sql.*;
import java.util.Scanner;

public class Main {

  public static void main(String[] args) {

    try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/giochi_olimpici", "root", "******") ) {

      Scanner input = new Scanner(System.in);
      int operazione;
      String continua;
      do {
        System.out.print("Quale operazione vuoi fare tra: getBiglietti (1), getMedagliereNazioni (2), getInvestimenti (3), getMiglioriAtleti (4)? ");
        operazione = input.nextInt();
        System.out.println();
        switch (operazione) {
          case 1 -> getBiglietti(connection);
          case 2 -> getMedagliereNazioni(connection);
          case 3 -> getInvestimenti(connection);
          case 4 -> getMiglioriAtleti(connection);
          default -> System.out.println("Operazione non presente!");
        }
        System.out.print("Se vuoi fare altre operazioni, digita \"1\", altrimenti premi invio: ");
        Scanner scanner = new Scanner(System.in);
        continua = scanner.nextLine();

      } while (continua.equals("1"));

    } catch (Exception e) {
      System.out.println(e);
    }

  }


  private static void getBiglietti(Connection connection) throws SQLException {
    CallableStatement callableStatement = connection.prepareCall("{call getBigliettiDisponibili(?)}");
    System.out.printf("%s", "Inserisci l' edizione dell' olimpiade di cui vuoi vedere il numero di biglietti disponibili: ");
    Scanner input = new Scanner(System.in);
    String edizione = input.nextLine();
    System.out.printf("%n%n");
    callableStatement.setString(1, edizione);
    boolean hadResult = callableStatement.execute();
    while (hadResult) {
      ResultSet resultSet = callableStatement.getResultSet();
      System.out.printf("%s%n", "------------------------------------------------------------------------------");
      String format = "%-3.3s" + "%-45.45s" + "%-4.4s" + "%-21.21s" + "%5.5s";
      System.out.format(format, "|", "STADIO", "|", "BIGLIETTI DISPONIBILI", "|");
      System.out.println();
      System.out.printf("%s%n", "------------------------------------------------------------------------------");
      format = "%-3.3s" + "%-45.45s" + "%-4.4s" + "%-6.6s" + "%20.20s";
      while (resultSet.next()) {
        System.out.format(format, "|", resultSet.getString("stadio"), "|", resultSet.getString("biglietti_disponibili"), "|");
        System.out.println();
      }
      hadResult = callableStatement.getMoreResults();
    }
    System.out.printf("%s%n%n%n", "------------------------------------------------------------------------------");
  }

  private static void getMedagliereNazioni(Connection connection) throws SQLException {
    CallableStatement callableStatement = connection.prepareCall("{call getMedagliere(?)}");
    System.out.printf("%s", "Inserisci l' edizione dell' olimpiade di cui vuoi vedere le medaglie: ");
    Scanner input = new Scanner(System.in);
    String edizione = input.nextLine();
    System.out.printf("%n%n");
    callableStatement.setString(1, edizione);
    boolean hadResult = callableStatement.execute();
    while (hadResult) {
      ResultSet resultSet = callableStatement.getResultSet();
      System.out.printf("%s%n", "-----------------------------------------------------");
      String format = "%-3.3s" + "%-20.20s" + "%-4.4s" + "%-21.21s" + "%5.5s";
      System.out.format(format, "|", "NAZIONE", "|", "MEDAGLIE VINTE", "|");
      System.out.println();
      System.out.printf("%s%n", "-----------------------------------------------------");
      format = "%-3.3s" + "%-20.20s" + "%-4.4s" + "%-6.6s" + "%20.20s";
      while (resultSet.next()) {
        System.out.format(format, "|", resultSet.getString("nazione"), "|", resultSet.getString("numMedaglie"), "|");
        System.out.println();
      }
      hadResult = callableStatement.getMoreResults();
    }
    System.out.printf("%s%n%n%n", "-----------------------------------------------------");
  }

  private static void getInvestimenti(Connection connection) throws SQLException {
    CallableStatement callableStatement = connection.prepareCall("{call getInvestimenti()}");
    System.out.printf("%s%n%n", "Investimento nelle edizioni delle olimpiadi");
    boolean hadResult = callableStatement.execute();
    while (hadResult) {
      ResultSet resultSet = callableStatement.getResultSet();
      System.out.printf("%s%n", "-----------------------------------------------------------------------------------------------------");
      String format = "%-3.3s" + "%-20.20s" + "%-4.4s" + "%-21.21s" + "%-4.4s" + "%-20.20s" + "%-4.4s" + "%-20.20s" + "%5.5s";
      System.out.format(format, "|", "EDIZIONE", "|", "CITTA'", "|", "INVESTIMENTO", "|", "NUMERO STADI", "|");
      System.out.println();
      System.out.printf("%s%n", "-----------------------------------------------------------------------------------------------------");
      while (resultSet.next()) {
        System.out.format(format, "|", resultSet.getString("edizione"), "|", resultSet.getString("città"), "|",
          (resultSet.getString("investimento") + " $"), "|", resultSet.getString("numeroStadi"), "|");
        System.out.println();
      }
      hadResult = callableStatement.getMoreResults();
    }
    System.out.printf("%s%n%n%n", "-----------------------------------------------------------------------------------------------------");
  }

  private static void getMiglioriAtleti(Connection connection) throws SQLException {
    CallableStatement callableStatement = connection.prepareCall("{call getAtletiPiùPremiati()}");
    System.out.printf("%s%n%n", "Atleti più premiati (sul podio) rispetto a tutte le edizioni");
    boolean hadResult = callableStatement.execute();
    while (hadResult) {
      ResultSet resultSet = callableStatement.getResultSet();
      System.out.printf("%s%n", "-------------------------------------------------------------------------------------------");
      String format = "%-3.3s" + "%-26.26s" + "%-4.4s" + "%-15.15s" + "%-4.4s" + "%-15.15s" + "%-4.4s" + "%-15.15s" + "%5.5s";
      System.out.format(format, "|", "ATLETA", "|", "NUMERO ORI", "|", "NUMERO ARGENTI", "|", "NUMERO BRONZI", "|");
      System.out.println();
      System.out.printf("%s%n", "-------------------------------------------------------------------------------------------");
      while (resultSet.next()) {
        System.out.format(format, "|", resultSet.getString("nome"), "|", resultSet.getString("numeroOri"), "|",
          resultSet.getString("numeroArgenti"), "|", resultSet.getString("numeroBronzi"), "|");
        System.out.println();
      }
      hadResult = callableStatement.getMoreResults();
    }
    System.out.printf("%s%n%n%n", "-------------------------------------------------------------------------------------------");
  }
}
