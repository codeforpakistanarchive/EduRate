package edurate.alifailaan.com.edurate;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;

import java.util.ArrayList;

import edurate.alifailaan.com.storage.City;

/**
 * Created by mua on 2/21/2015.
 */
public class EduRateCityListAdapter extends BaseAdapter implements Filterable {


    private EduRateSelectCity mContext;
    private ArrayList<City> data;

    //Declaring variables end


    public EduRateCityListAdapter(EduRateSelectCity ctx,ArrayList<City> data)
    {
        this.mContext=ctx;
        this.data=data;
    }



    @Override
    public int getCount() {
        return this.data.size();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {

        final Holder mHolder;
        LayoutInflater layoutInflater;
        mHolder=new Holder();
        //end

        if(convertView==null)
        {
            //Inflating listrow layout for listview layout
            layoutInflater= (LayoutInflater)mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView= layoutInflater.inflate(R.layout.citylistviewrow,null);
            //end

            //finding controls in inflated layout via helper class Holder
            mHolder.city= (TextView)convertView.findViewById(R.id.txtcity);
            //end
        }

        if(data!=null && data.size()>0)
        {
            mHolder.city.setText(data.get(position).getCityName());
        }

        convertView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent= new Intent(mContext,EduRateSelectSchool.class);
                intent.putExtra("cityID",data.get(position).getCity_ID());
                mContext.startActivity(intent);
            }
        });

        return convertView;
    }

    private class Holder
    {
        TextView city;
    }

    @Override
    public Filter getFilter() {
        return null;
    }
}
