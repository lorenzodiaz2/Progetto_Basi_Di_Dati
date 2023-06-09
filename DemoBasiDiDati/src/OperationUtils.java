import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class OperationUtils {

  public static void getBiglietti(User user, String edizione, String[][] dati) {
    try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/giochi_olimpici", user.username, user.password)) {

      CallableStatement callableStatement = connection.prepareCall("{call getBigliettiDisponibili(?)}");
      callableStatement.setString(1, edizione);
      boolean hadResult = callableStatement.execute();
      int i = 0;
      while (hadResult) {
        ResultSet resultSet = callableStatement.getResultSet();
        while (resultSet.next()) {
          dati[i][0] = resultSet.getString("stadio");
          dati[i][1] = resultSet.getString("biglietti_disponibili");
          i++;
        }
        hadResult = callableStatement.getMoreResults();
      }
      callableStatement.close();
    } catch (Exception e) {
      System.out.println(e);
    }
  }

  public static void getAtletiPremiati(User user, String[][] dati) {
    try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/giochi_olimpici", user.username, user.password)) {

      CallableStatement callableStatement = connection.prepareCall("{call getAtletiPiùPremiati()}");
      boolean hadResult = callableStatement.execute();
      int i = 0;
      while (hadResult) {
        ResultSet resultSet = callableStatement.getResultSet();
        while (resultSet.next()) {
          dati[i][0] = resultSet.getString("nome");
          dati[i][1] = resultSet.getString("numeroOri");
          dati[i][2] = resultSet.getString("numeroArgenti");
          dati[i][3] = resultSet.getString("numeroBronzi");
          i++;
        }
        hadResult = callableStatement.getMoreResults();
      }
      callableStatement.close();
    } catch (Exception e) {
      System.out.println(e);
    }
  }

  public static void getInvestimenti(User user, String[][] dati) {
    try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/giochi_olimpici", user.username, user.password)) {

      CallableStatement callableStatement = connection.prepareCall("{call getInvestimenti()}");
      boolean hadResult = callableStatement.execute();
      int i = 0;
      while (hadResult) {
        ResultSet resultSet = callableStatement.getResultSet();
        while (resultSet.next()) {
          dati[i][0] = resultSet.getString("edizione");
          dati[i][1] = resultSet.getString("città");
          dati[i][2] = resultSet.getString("investimento");
          dati[i][3] = resultSet.getString("numeroStadi");
          i++;
        }
        hadResult = callableStatement.getMoreResults();
      }
      callableStatement.close();
    } catch (Exception e) {
      System.out.println(e);
    }
  }

  public static void getMedagliereNazioni(User user, String edizione, String[][] dati) {
    try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/giochi_olimpici", user.username, user.password)) {

      CallableStatement callableStatement = connection.prepareCall("{call getMedagliere(?)}");
      callableStatement.setString(1, edizione);
      boolean hadResult = callableStatement.execute();
      int i = 0;
      while (hadResult) {
        ResultSet resultSet = callableStatement.getResultSet();
        while (resultSet.next()) {
          dati[i][0] = resultSet.getString("nazione");
          dati[i][1] = resultSet.getString("numMedaglie");
          i++;
        }
        hadResult = callableStatement.getMoreResults();
      }
      callableStatement.close();
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}