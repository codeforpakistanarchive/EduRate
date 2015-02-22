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
public class SchoolDBHandler  {

    private SQLiteDatabase database;
    private DBManager db;

    public SchoolDBHandler(Context context)
    {
        db= new DBManager(context);
    }

    public void open() throws SQLException {
        database = db.getWritableDatabase();
    }

    public void close() {
        db.close();
    }


    public void AddSchools(ArrayList<School> school)
    {


        open();
        if(school!=null && school.size()>0)
        {

            for (int i = 0; i < school.size(); i++) {

                ContentValues cv = new ContentValues();
               // cv.put(DBManager.School_Id, school.get(i).getSchool_id());
                cv.put(DBManager.School_name, school.get(i).getName());
                cv.put(DBManager.City_ID, school.get(i).getCity_Id());
                cv.put(DBManager.About_School, school.get(i).getAbout_School());
                cv.put(DBManager.No_of_students, school.get(i).getNo_of_students());
                database.insert(DBManager.TABLE_CITY, null, cv);
            }
        }
        close();


    }

    public ArrayList<School> GetAllSchoolsByCityID(String City_Id)
    {

        open();
        ArrayList<School> school_data=new ArrayList<School>();
        String selectQuery = "SELECT  * FROM " + DBManager.TABLE_SCHOOL +" where "+DBManager.City_ID +"="+ City_Id;

        Cursor c = database.rawQuery(selectQuery, null);

        if (c != null) {

            for (int i = 0; i < c.getCount(); i++) {
                c.moveToPosition(i);
                School school= new School();
                school.setCity_Id(c.getInt(c.getColumnIndex(DBManager.City_ID)));
                school.setName(c.getString(c.getColumnIndex(DBManager.School_name)));
                school.setAbout_School(c.getString(c.getColumnIndex(DBManager.About_School)));
                school.setSchool_id(c.getInt(c.getColumnIndex(DBManager.School_Id)));
                school.setSchool_Type(c.getString(c.getColumnIndex(DBManager.School_Type)));
                school_data.add(school);
            }
        }

        return school_data;
    }


}
