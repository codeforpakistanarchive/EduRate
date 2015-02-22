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
public class FacilityRatingDBHandler {

    private SQLiteDatabase database;
    private DBManager db;

    public FacilityRatingDBHandler(Context context)
    {
        db= new DBManager(context);
    }

    public void open() throws SQLException {
        database = db.getWritableDatabase();
    }

    public void close() {
        db.close();
    }


    public void AddFacilityRating(ArrayList<FacilityRating> facility_rating)
    {


        open();
        if(facility_rating!=null && facility_rating.size()>0)
        {

            for (int i = 0; i < facility_rating.size(); i++) {

                ContentValues cv = new ContentValues();
                cv.put(DBManager.Facility_Id, facility_rating.get(i).getFacility_id());
                cv.put(DBManager.School_Id, facility_rating.get(i).getSchool_id());
                cv.put(DBManager.Rating, facility_rating.get(i).getRating());
                cv.put(DBManager.Comments, facility_rating.get(i).getComments());

                database.insert(DBManager.TABLE_FACILITYRATING, null, cv);
            }
        }
        close();


    }

    public ArrayList<School> GetAllFacilitiyBySchoolID(String schoolId)
    {

        open();
        ArrayList<School> school_data=new ArrayList<School>();
        String selectQuery = "SELECT  * FROM " + DBManager.TABLE_FACILITYRATING +" where "+DBManager.School_Id +"="+ schoolId;

        Cursor c = database.rawQuery(selectQuery, null);

        if (c != null) {

            for (int i = 0; i < c.getCount(); i++) {
                c.moveToPosition(i);
                School school= new School();
                school.setCity_Id(c.getInt(c.getColumnIndex(DBManager.City_ID)));
                school.setName(c.getString(c.getColumnIndex(DBManager.CityName)));
                school.setAbout_School(c.getString(c.getColumnIndex(DBManager.About_School)));
                school.setSchool_id(c.getInt(c.getColumnIndex(DBManager.School_Id)));
                school.setSchool_Type(c.getString(c.getColumnIndex(DBManager.School_Type)));
                school_data.add(school);
            }
        }
        close();
        return school_data;
    }

}
