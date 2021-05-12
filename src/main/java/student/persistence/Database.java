package student.persistence;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/**
 * Provides Access to the database
 * Created on 8/31/16
 *
 * @author pwaite
 */
public class Database {
    private static Database instance = new Database();
    private Properties properties;
    private Connection connection;
    private static final String DATABASE_PROPERTIES_FILE = "/database.properties";

    private Database() {
        loadProperties();
    }

    /**
     * Load up properties for connection info
     */
    private void loadProperties() {
        properties = new Properties();
        try {
            properties.load(this.getClass().getResourceAsStream(DATABASE_PROPERTIES_FILE));
        } catch (IOException ioe) {
        } catch (Exception e) {
        }
    }

    /**
     * Gets instance - singleton pattern usage
     *
     * @return the instance
     */
    public static Database getInstance() {
        return instance;
    }

    /**
     * Gets connection.
     *
     * @return the connection
     */
    public Connection getConnection() {
        return connection;
    }

    /**
     * Connect.
     *
     * @throws Exception the exception
     */
    public void connect() throws Exception {
        if (connection != null) {
            return;
        }

        try {
            Class.forName(properties.getProperty("driver"));
        } catch (ClassNotFoundException cnfe) {
            throw new Exception("Database.connect()... Error: MySQL Driver not found");
        }

        String url = properties.getProperty("url");
        connection = DriverManager.getConnection(url, properties.getProperty("username"), properties.getProperty("password"));
    }

    /**
     * Disconnect.
     */
    public void disconnect() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
            }
        }

        connection = null;
    }

    /**
     * Run sql.
     *
     * @param sqlFile the sql file
     */
    public void runSQL(String sqlFile) {

        Statement stmt = null;
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        InputStream inputStream = classloader.getResourceAsStream(sqlFile);
        try (BufferedReader br = new BufferedReader(new InputStreamReader(inputStream))) {

            Class.forName("com.mysql.cj.jdbc.Driver");
            connect();
            stmt = connection.createStatement();

            while (true) {
                String sql = br.readLine();
                if (sql == null) {
                    break;
                }
                stmt.executeUpdate(sql);

            }

        } catch (SQLException se) {
        } catch (Exception e) {
        } finally {
            disconnect();
        }

    }
}
