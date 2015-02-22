package edurate.alifailaan.com.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;

/**
 * Created by mua on 2/21/2015.
 */
public class DBManager extends SQLiteOpenHelper {

    private static final String LOG = "DatabaseHelper";

    // Database Version
    private static final int DATABASE_VERSION = 1;

    // Database Name
    private static final String DATABASE_NAME = "EduRate";

    // Table Names
    public static final String TABLE_CITY = "Cities";
    public static final String TABLE_SCHOOL = "Schools";
    public static final String TABLE_FACILITY = "Facilities";
    public static final String TABLE_FACILITYRATING="FacilityRating";


    //Table Column Names
    public static String City_ID="city_id";
    public static String CityName="city_name";
    public static String School_Id="school_id";
    public static String School_name="school_name";
    public static String School_Type="school_type";
    public static String No_of_students="no_of_students";
    public static String About_School="about_school";
    public static String Facility_Id="facility_id";
    public static String FacilityName="facility_name";
    public static String Rating_id="rating_id";
    public static String School_id="school_id";
    public static String Rating="rating";
    public static String Comments="Comments";

    // Table Create Statement

    // City table create statement
    private static final String CAREATE_TABLE_CITY = "CREATE TABLE "
            + TABLE_CITY + "(" + City_ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +CityName +" Text"+ ")";

    // School Table Create Statement
    private static final String CAREATE_TABLE_SCHOOLS = "CREATE TABLE "
            + TABLE_SCHOOL + "(" + School_Id + " INTEGER PRIMARY KEY AUTOINCREMENT," +School_name +" Text,"+City_ID +" INTEGER,"+School_Type +" Text,"+No_of_students +" INTEGER,"+About_School +" Text"+ ")";

    //Facility Table Create Statement
    private static final String CAREATE_TABLE_FACILITY = "CREATE TABLE "
            + TABLE_FACILITY + "(" + Facility_Id + " INTEGER PRIMARY KEY AUTOINCREMENT," +FacilityName +" Text"+ ")";

    //Facility Rating Table Create Statement
    private static final String CAREATE_TABLE_FACILITY_RATING = "CREATE TABLE "
            + TABLE_FACILITYRATING + "(" + Rating_id + " INTEGER PRIMARY KEY AUTOINCREMENT," +School_name +" Text,"+School_Id +" INTEGER,"+ Facility_Id +" INTEGER,"+Rating +" INTEGER,"+Comments +" Text"+ ")";



    public DBManager(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {

        db.execSQL(CAREATE_TABLE_CITY);
        db.execSQL(CAREATE_TABLE_FACILITY);
        db.execSQL(CAREATE_TABLE_FACILITY_RATING);
        db.execSQL(CAREATE_TABLE_SCHOOLS);


        ContentValues cities = new ContentValues();
        cities.put(DBManager.CityName, "Islamabad");
        db.insert(DBManager.TABLE_CITY, null, cities);

        ContentValues schools= new ContentValues();
        schools.put(DBManager.School_name,"IMCB");
        schools.put(DBManager.City_ID, 1);
        schools.put(DBManager.About_School,"Islamabad Model College For Boys is govenrment chartered school located in all sectors in Islamabad with all the neccessary facilities");
        schools.put(DBManager.No_of_students, "2000");
        db.insert(DBManager.TABLE_SCHOOL, null, schools);

        ContentValues facilities= new ContentValues();
        facilities.put(DBManager.FacilityName, "Cleanliness");
        db.insert(DBManager.TABLE_FACILITY, null, facilities);

        ContentValues facilities1= new ContentValues();
        facilities1.put(DBManager.FacilityName, "Toilet");
        db.insert(DBManager.TABLE_FACILITY, null, facilities1);

        ContentValues facilities2= new ContentValues();
        facilities2.put(DBManager.FacilityName, "Building");
        db.insert(DBManager.TABLE_FACILITY, null, facilities2);

        ContentValues facilities3= new ContentValues();
        facilities3.put(DBManager.FacilityName, "Electricity");
        db.insert(DBManager.TABLE_FACILITY, null, facilities3);


        ContentValues FacilityRating= new ContentValues();
        FacilityRating.put(DBManager.Facility_Id,1);
        FacilityRating.put(DBManager.School_Id,1);
        FacilityRating.put(DBManager.Rating,4);
        FacilityRating.put(DBManager.Comments, "Its a nice school if you are looking for a public school with good education and street smartness");
        db.insert(DBManager.TABLE_FACILITY, null, FacilityRating);


    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

        db.execSQL("DROP TABLE IF EXISTS " + TABLE_CITY);
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_SCHOOL);
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_FACILITY);
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_FACILITYRATING);
        onCreate(db);

    }
}
