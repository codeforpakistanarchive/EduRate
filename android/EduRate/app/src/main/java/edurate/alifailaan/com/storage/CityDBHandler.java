package edurate.alifailaan.com.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;

/**
 * Created by mua on 2/21/2015.
 */
public class CityDBHandler {

    private SQLiteDatabase database;
    private DBManager db;

    public CityDBHandler(Context context)
    {
        db= new DBManager(context);
    }

    public void open() throws SQLException {
        database = db.getWritableDatabase();
    }

    public void close() {
        db.close();
    }


    public void AddCityies(ArrayList<City> cities)
    {


        open();
        if(cities!=null && cities.size()>0)
        {

                for (int i = 0; i < cities.size(); i++) {
                    ContentValues cv = new ContentValues();
                    cv.put(DBManager.CityName, cities.get(i).getCityName());
                    database.insert(DBManager.TABLE_CITY, null, cv);
                }
        }
        close();


    }

    public ArrayList<City> GetAllCities()
    {

        open();
        ArrayList<City> city_data=new ArrayList<City>();
        String selectQuery = "SELECT  * FROM " + DBManager.TABLE_CITY ;

        Cursor c = database.rawQuery(selectQuery, null);

        if (c != null) {

            for (int i = 0; i < c.getCount(); i++) {
                c.moveToPosition(i);
                City city= new City();
                city.City_ID=c.getInt(c.getColumnIndex(DBManager.City_ID));
                city.CityName=c.getString(c.getColumnIndex(DBManager.CityName));
                city_data.add(city);
            }
        }

        return city_data;
    }
}
