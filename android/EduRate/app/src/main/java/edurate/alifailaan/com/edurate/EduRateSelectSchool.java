package edurate.alifailaan.com.edurate;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

import edurate.alifailaan.com.storage.City;
import edurate.alifailaan.com.storage.CityDBHandler;
import edurate.alifailaan.com.storage.School;
import edurate.alifailaan.com.storage.SchoolDBHandler;

/**
 * Created by mua on 2/21/2015.
 */
public class EduRateSelectSchool extends Activity {

    Intent intent;
    ListView schoollistview;
    SchoolDBHandler db;
    EduRateSchoolListAdapter adapter;
    ArrayList<School> school= new ArrayList<School>();
    int cityId;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.schoolslistview);

        schoollistview=(ListView)findViewById(R.id.schoolslistview);
        intent = getIntent();

        cityId= intent.getIntExtra("cityID",0);

        db= new SchoolDBHandler(EduRateSelectSchool.this);

        school= db.GetAllSchoolsByCityID(""+cityId);

        adapter= new EduRateSchoolListAdapter(EduRateSelectSchool.this,school);

        schoollistview.setAdapter(adapter);

    }
}
