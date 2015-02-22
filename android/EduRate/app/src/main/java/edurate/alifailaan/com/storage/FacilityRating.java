package edurate.alifailaan.com.storage;

/**
 * Created by mua on 2/21/2015.
 */
public class FacilityRating {

    public int getRat_id() {
        return rat_id;
    }

    public void setRat_id(int rat_id) {
        this.rat_id = rat_id;
    }

    public int getSchool_id() {
        return school_id;
    }

    public void setSchool_id(int school_id) {
        this.school_id = school_id;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public int getFacility_id() {
        return facility_id;
    }

    public void setFacility_id(int facility_id) {
        this.facility_id = facility_id;
    }

    public String getComments() {
        return Comments;
    }

    public void setComments(String comments) {
        Comments = comments;
    }

    public int rat_id;
    public int school_id;
    public float rating;
    public int facility_id;
    public String Comments;
}
