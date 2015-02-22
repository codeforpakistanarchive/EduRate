package edurate.alifailaan.com.edurate;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;

import java.util.ArrayList;

import edurate.alifailaan.com.storage.City;
import edurate.alifailaan.com.storage.School;

/**
 * Created by mua on 2/21/2015.
 */
public class EduRateSchoolListAdapter extends BaseAdapter implements Filterable {


    private EduRateSelectSchool mContext;
    private ArrayList<School> data;

    public EduRateSchoolListAdapter(EduRateSelectSchool ctx,ArrayList<School> data)
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
    public View getView(final int position, View convertView, ViewGroup parent)
    {

        final Holder mHolder;
        LayoutInflater layoutInflater;
        mHolder=new Holder();
        //end

        if(convertView==null)
        {
            //Inflating listrow layout for listview layout
            layoutInflater= (LayoutInflater)mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView= layoutInflater.inflate(R.layout.schoolslistviewrow,null);
            //end

            //finding controls in inflated layout via helper class Holder
            mHolder.School= (TextView)convertView.findViewById(R.id.txtschool);
            //end
        }

        if(data!=null && data.size()>0 && mHolder.School!=null)
        {
            mHolder.School.setText(data.get(position).getName());
        }

        convertView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent= new Intent(mContext,EduRateSchoolDetail.class);
                intent.putExtra("schoolpojo",data.get(position));
                mContext.startActivity(intent);
            }
        });

        return convertView;
    }

    private class Holder
    {
        TextView School;
    }

    @Override
    public Filter getFilter() {
        return null;
    }
}
