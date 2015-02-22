package edurate.alifailaan.com.edurate;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

import edurate.alifailaan.com.storage.City;
import edurate.alifailaan.com.storage.CityDBHandler;
import edurate.alifailaan.com.storage.DBManager;

/**
 * Created by mua on 2/21/2015.
 */
public class EduRateSelectCity extends Activity {

    ListView citylistview;
    CityDBHandler db;
    EduRateCityListAdapter adapter;
    ArrayList<City> city= new ArrayList<City>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.citylistview);

        citylistview=(ListView)findViewById(R.id.citylistview);
        db= new CityDBHandler(EduRateSelectCity.this);
        city=db.GetAllCities();
        adapter=new EduRateCityListAdapter(EduRateSelectCity.this,city);
        citylistview.setAdapter(adapter);

    }
}
