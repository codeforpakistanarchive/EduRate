package edurate.alifailaan.com.edurate;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

import edurate.alifailaan.com.storage.DBManager;
import edurate.alifailaan.com.storage.Facility;
import edurate.alifailaan.com.storage.FacilityDBHandler;

/**
 * Created by mua on 2/22/2015.
 */
public class EduRateFacilityListView extends Activity {

    ListView facilitylistview;
    EduRateFacilityListAdapter adapter;
    FacilityDBHandler db;
    ArrayList<Facility> facilities;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.ratetheschoollistview);

        facilitylistview=(ListView)findViewById(R.id.facilitylistview);

        db= new FacilityDBHandler(EduRateFacilityListView.this);

        facilities= db.GetAllFacility();

        adapter= new EduRateFacilityListAdapter(EduRateFacilityListView.this,facilities);

        facilitylistview.setAdapter(adapter);


    }
}
