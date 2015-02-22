package edurate.alifailaan.com.storage;

import java.io.Serializable;

/**
 * Created by mua on 2/21/2015.
 */
public class School implements Serializable {

    public int getSchool_id() {
        return School_id;
    }

    public void setSchool_id(int school_id) {
        School_id = school_id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public int getCity_Id() {
        return City_Id;
    }

    public void setCity_Id(int city_Id) {
        City_Id = city_Id;
    }

    public String getSchool_Type() {
        return School_Type;
    }

    public void setSchool_Type(String school_Type) {
        School_Type = school_Type;
    }

    public int getNo_of_students() {
        return No_of_students;
    }

    public void setNo_of_students(int no_of_students) {
        No_of_students = no_of_students;
    }

    public String getAbout_School() {
        return About_School;
    }

    public void setAbout_School(String about_School) {
        About_School = about_School;
    }

    public int School_id;
    public String Name;
    public int City_Id;
    public String School_Type;
    public int No_of_students;
    public String About_School;
}
