package main.java.DBAccess;

import javax.swing.*;
import java.sql.*;
import java.util.*;
import java.util.stream.IntStream;

/**
 * Class supposed to take the representation of the result set.
 * It has a head made of a tuple (Column Name, Type of data), and a data made of {@link Row}s.
 */
public class DataSet {
    private ArrayList<Map.Entry<String, Class>> head;
    private ArrayList<Row> data;

    private int[] visibleColumns;

    public SQLRequest request;

    /**
     * Initializes the head and data
     */
    public DataSet(SQLRequest request, int[] visibleColumns){
        head = new ArrayList<>();
        data = new ArrayList<>();

        this.request = request;
        this.visibleColumns = visibleColumns;
    }

    /**
     * Builds head and data with a {@link ResultSet}
     * @param set
     */
    public void analyze(ResultSet set) {
        head = new ArrayList<>();
        data = new ArrayList<>();

        try {

            //We take metadatas and number of columns
            ResultSetMetaData rsmd = set.getMetaData();
            int numOfCol = rsmd.getColumnCount();

            //We add a "map entry" meaning a tuple made of two values
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                head.add(new AbstractMap.SimpleImmutableEntry<>(rsmd.getColumnName(i), Row.TYPE.get(rsmd.getColumnTypeName(i).toUpperCase())));
            }

            while (set.next()) {
                Row current_row = new Row();

                for (int i = 1; i <= numOfCol; i++) {
                    current_row.add(set.getObject(i), rsmd.getColumnTypeName(i));
                }

                data.add(current_row);
            }

        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    /**
     * Exports to a tuple useful for a {@link JTable}
     * @return  a {@link Map.Entry} of an {@link Object}[][] meaning data and {@link String}[] meaning the column headers.
     */
    public Map.Entry<Object[][], String[]> exportToTable(){
        boolean selectColumns = this.visibleColumns != null;

        //If we have to select columns then we take the array of selected ones,
        //else we fill an array with int values from 1 to the size of total columns
        int[] toTake = selectColumns ? this.visibleColumns.clone() : new int[this.head.size()];
        if(!selectColumns) IntStream.range(0, this.head.size()).forEach(value -> toTake[value] = value);

        String[] head = new String[toTake.length];
        Object[][] data = new Object[this.data.size()][toTake.length];
        Map.Entry<Object, Class> temp;
        int add = 0;

        //Then for each selected column we take the head
        for (int aToTake : toTake) {
            head[add++] = this.head.get(aToTake).getKey();
        }

        //And for each row
        for(int i=0;i<this.data.size();i++){
            Object[] rowData = new Object[toTake.length];
            add = 0;

            //we take the selected columns (we get the value and cast it with the key)
            for (int aToTake : toTake) {
                temp = this.data.get(i).row.get(aToTake);
                rowData[add++] = temp.getValue().cast(temp.getKey());
            }

            data[i] = rowData;
        }

        //We return a tuple
        return new AbstractMap.SimpleImmutableEntry<>(data, head);
    }

    public HashMap<String, Object> getRowFromItem(Object itemValue){
        for(Row row : this.data){
            for(int column : this.visibleColumns){
                if (row.row.get(column).getKey().equals(itemValue)) {
                    HashMap<String, Object> selectedRow = new HashMap<>();
                    for(int i=0;i<this.head.size();i++){
                        selectedRow.put(this.head.get(i).getKey(), row.row.get(i).getKey());
                    }

                    return selectedRow;
                }
            }
        }

        return null;
    }

    public void updateRequest(SQLRequest request){
        this.request = request;
    }
}