package main.java;

import main.java.DBAccess.DBAccess;
import main.java.DBAccess.SSTunnel;
import main.java.view.GeneralView;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class SocialRecipe {

    public static void main(String[] args){
        GeneralView view = new GeneralView();
        /*SSTunnel tunnel = new SSTunnel("enseirb", "pravez.ddns.net", "vatefairefoutre42sgbd", 22);
        DBAccess access = new DBAccess("localhost", 5432, "enseirb", tunnel);

        access.setCredentials("enseirb", "vatefairefoutre");

        try {
            access.connect(6543);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        ResultSet rset = access.sendQuery("SELECT * FROM test");

        try {
            while (rset.next()) {
                // Affichage du resultat.
                System.out.println(rset.getInt(1));
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        access.close();*/

    }
}
