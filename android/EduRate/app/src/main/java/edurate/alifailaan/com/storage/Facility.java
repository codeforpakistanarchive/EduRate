package edurate.alifailaan.com.storage;

/**
 * Created by mua on 2/21/2015.
 */
public class Facility {

    public int getFacility_Id() {
        return Facility_Id;
    }

    public void setFacility_Id(int facility_Id) {
        Facility_Id = facility_Id;
    }

    public String getFacilityName() {
        return FacilityName;
    }

    public void setFacilityName(String facilityName) {
        FacilityName = facilityName;
    }

    public int Facility_Id;
    public String FacilityName;
}
