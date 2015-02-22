package edurate.alifailaan.com.edurate;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import edurate.alifailaan.com.storage.School;

/**
 * Created by mua on 2/21/2015.
 */
public class EduRateSchoolDetail extends Activity {

    TextView txtschoolname,txtschooltype,txtschooldetail,txtschoolcityname,txtlevel;
    Intent intent;
    School school;
    Button btnRateschool;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.schooldetail);

        txtschooldetail= (TextView)findViewById(R.id.txtaboutschool);
        txtlevel=(TextView)findViewById(R.id.txtlevel);
        txtschooltype=(TextView)findViewById(R.id.txttype);
        txtschoolname= (TextView)findViewById(R.id.txtschoolname);
        txtschoolcityname=(TextView)findViewById(R.id.txtschoolcity);
        btnRateschool=(Button)findViewById(R.id.btnrateschool);
        intent=getIntent();

        school=(School) intent.getSerializableExtra("schoolpojo");

        txtschooldetail.setText(school.getAbout_School());
        txtschooltype.setText("Private");
        txtlevel.setText("O/A Level");
        txtschoolname.setText(school.getName());
        txtschoolcityname.setText("Islamabad");

        btnRateschool.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent= new Intent(EduRateSchoolDetail.this,EduRateFacilityListView.class);
                intent.putExtra("schoolId",school.getSchool_id());
                startActivity(intent);
            }
        });





    }
}
