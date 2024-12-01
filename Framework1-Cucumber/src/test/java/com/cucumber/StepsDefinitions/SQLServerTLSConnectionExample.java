package com.cucumber.StepsDefinitions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class SQLServerTLSConnectionExample {
    public static void main(String[] args) {
        String username = "sa";
        String password = "@tclosesa@2016";
//        String jdbcUrl = "jdbc:sqlserver://192.168.12.187:1433;databaseName=MBLLOS_CC_S;encrypt=true;trustServerCertificate=true;integratedSecurity=true;";
//        jdbc:sqlserver://jdbc:sqlserver://BPM-ATCSQL-01:1433;databaseName=STATDB_504_QA_REVAMP;encrypt=true;trustServerCertificate=true;
        String jdbcUrl = "jdbc:sqlserver://BPM-ATCSQL-01:1433;" +
                        "databaseName=STATDB_504_QA_REVAMP;" +
                        "user="+username+";"+
                        "password="+password+";"+
                        "integratedSecurity=false;" +
                        "encrypt=false;" +
                        "trustServerCertificate=true;";


        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            // Enable TLS 1.2
            System.setProperty("https.protocols", "TLSv1.2");

            Properties properties = new Properties();
            properties.put("user",username);
            properties.put("password", password);
            properties.put("LoginTimeout", "35");
            properties.put("encrypt", "true");
            properties.put("trustServerCertificate", "true");
//            properties.put("sslProtocol", "TLSv1.2"); // Set TLS version here

            // Establish the connection
            Connection connection = DriverManager.getConnection(jdbcUrl,username,password);

            if (connection != null) {
                System.out.println("Connected to the database!");

                // Perform database operations here

                // Close the connection when done
                connection.close();
            }
        } catch (SQLException e) {
            System.err.println("Connection error: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}