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
public class FacilityDBHandler {

    private SQLiteDatabase database;
    private DBManager db;

    public FacilityDBHandler(Context context)
    {
        db= new DBManager(context);
    }

    public void open() throws SQLException {
        database = db.getWritableDatabase();
    }

    public void close() {
        db.close();
    }

    public void AddFacility(ArrayList<Facility> facility)
    {
        open();
        if(facility!=null && facility.size()>0)
        {

            for (int i = 0; i < facility.size(); i++) {

                ContentValues cv = new ContentValues();
                cv.put(DBManager.FacilityName, facility.get(i).getFacilityName());
                //cv.put(DBManager.Facility_Id, facility.get(i).getFacility_Id());

                database.insert(DBManager.TABLE_FACILITYRATING, null, cv);
            }
        }
        close();
    }

    public ArrayList<Facility> GetAllFacility()
    {
        open();
        ArrayList<Facility> facility_data=new ArrayList<Facility>();
        String selectQuery = "SELECT  * FROM " + DBManager.TABLE_FACILITY ;

        Cursor c = database.rawQuery(selectQuery, null);

        if (c != null) {

            for (int i = 0; i < c.getCount(); i++) {
                c.moveToPosition(i);
                Facility fac= new Facility();
                fac.setFacility_Id(c.getInt(c.getColumnIndex(DBManager.Facility_Id)));
                fac.setFacilityName(c.getString(c.getColumnIndex(DBManager.FacilityName)));

                facility_data.add(fac);
            }
        }

        return facility_data;
    }
}
