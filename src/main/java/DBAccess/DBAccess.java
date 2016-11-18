package main.java.DBAccess;
import com.jcraft.jsch.JSchException;

import java.sql.*;

public class DBAccess {

    private String host;
    private int port;

    private String username;
    private String password;
    private String database;

    private Connection connection;
    private Statement statement;

    private SSTunnel tunnel;
    private int forwardPort;

    public DBAccess(String host, int port, String database){
        this.host = host;
        this.port = port;
        this.database = database;
    }

    public DBAccess(String host, int port, String database, SSTunnel tunnel){
        this.host = host;
        this.port = port;
        this.database = database;
        this.tunnel = tunnel;

        try {
            this.tunnel.initSession();
        } catch (JSchException e) {
            e.printStackTrace();
        }
    }

    public void setCredentials(String username, String password){
        this.username = username;
        this.password = password;
    }

    public void connect(int forwardPort) throws SQLException {
        this.forwardPort = forwardPort;
        this.tunnel.forwardPort(this.forwardPort, this.host, this.port);
        this.connection = DriverManager.getConnection("jdbc:postgresql://" + this.host + ":" + this.forwardPort + "/" + this.database, this.username, this.password);
        this.statement = this.connection.createStatement();
    }

    public ResultSet sendQuery(String query) {
        try {
            return this.statement.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public void close(){
        try{
            this.tunnel.close();
            this.statement.close();
            this.connection.close();
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}