package edurate.alifailaan.com.edurate;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.ArrayList;

import edurate.alifailaan.com.storage.City;
import edurate.alifailaan.com.storage.Facility;

/**
 * Created by mua on 2/22/2015.
 */
public class EduRateFacilityListAdapter extends BaseAdapter {


    private EduRateFacilityListView mContext;
    private ArrayList<Facility> data;

    //Declaring variables end


    public EduRateFacilityListAdapter(EduRateFacilityListView ctx,ArrayList<Facility> data)
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
            convertView= layoutInflater.inflate(R.layout.ratetheschoollistviewrow,null);
            //end

            //finding controls in inflated layout via helper class Holder
            mHolder.city= (TextView)convertView.findViewById(R.id.txtfacilityname);
            //end
        }

        if(data!=null && data.size()>0 && mHolder.city!=null)
        {
            mHolder.city.setText(data.get(position).getFacilityName());
        }

        return convertView;
    }

    private class Holder
    {
        TextView city;
    }
}
