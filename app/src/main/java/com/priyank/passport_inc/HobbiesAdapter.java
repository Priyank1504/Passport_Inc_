package com.priyank.passport_inc;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Priyank Verma on 8/24/2017.
 */

public class HobbiesAdapter extends BaseAdapter {

    private Context context;
    String hob, profilekey;
    private ArrayList < String > hobbiesList;
    EditText hobby, hobby1;
    ImageView edit, delete;
    Map < String, Object > hobbiesUpdates = new HashMap < String, Object > ();
    boolean update;
    private ViewGroup viewGroup;
    DatabaseReference ref;

    public HobbiesAdapter(Context context, ArrayList < String > hobbiesList, String profilekey) {
        this.context = context;
        this.hobbiesList = hobbiesList;
        this.profilekey = profilekey;
    }

    @Override
    public int getCount() {
        return hobbiesList.size();
    }

    @Override
    public Object getItem(int position) {
        return hobbiesList.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = View.inflate(context, R.layout.hobbies_items, null);
        }
        edit = (ImageView) convertView.findViewById(R.id.imageViewEdit);
        delete = (ImageView) convertView.findViewById(R.id.imageViewDel);
        delete.setEnabled(true);
        hobby = (EditText) convertView.findViewById(R.id.textViewHobby);
        hob = hobbiesList.get(position);
        hobby.setText(hob);
        update = false;
        hobby.setEnabled(false);

        edit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (update) {
                    viewGroup = (ViewGroup) v.getParent();
                    hobby1 = (EditText) viewGroup.findViewById(R.id.textViewHobby);
                    ImageView edit1=(ImageView) viewGroup.findViewById(R.id.imageViewEdit);
                    hobbiesList.remove(position);
                    notifyDataSetChanged();
                    ref = FirebaseDatabase.getInstance().getReference().child("Profile").child(profilekey).child("hobbies");
                    hobbiesUpdates.put("/" + position, hobby1.getText().toString().toUpperCase());
                    ref.updateChildren(hobbiesUpdates);
                    hobbiesList.add(position, hobby1.getText().toString().toUpperCase());
                    notifyDataSetChanged();
                    Toast.makeText(context, " Updated " + hobby1.getText().toString() + " successfully !", Toast.LENGTH_SHORT).show();
                    hobby1.setEnabled(false);
                    edit1.setImageResource(R.drawable.edit);
                    update = false;
                } else {
                    viewGroup = (ViewGroup) v.getParent();
                    hobby1 = (EditText) viewGroup.findViewById(R.id.textViewHobby);
                    ImageView edit1=(ImageView) viewGroup.findViewById(R.id.imageViewEdit);
                    hobby1.setEnabled(true);
                    edit1.setImageResource(R.drawable.update);
                    update = true;
                }
            }
        });

        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
               if(hobbiesList.size()>1) {
                   hobbiesList.remove(position);
                   notifyDataSetChanged();
                   ref = FirebaseDatabase.getInstance().getReference().child("Profile").child(profilekey).child("hobbies").child(String.valueOf(position));
                   ref.removeValue();
                   notifyDataSetChanged();
                   ArrayList<String> checkedList= check(hobbiesList);
                   ref = FirebaseDatabase.getInstance().getReference().child("Profile").child(profilekey).child("hobbies");
                   ref.setValue(checkedList);
               }else{
                   delete.setEnabled(false);
                   delete.setAlpha((float) .2);
                   Toast.makeText(context, " You should atleast have one hobby in your amazing profile !", Toast.LENGTH_SHORT).show();
               }
            }
        });
        return convertView;
    }

     /* -- Refreshing the arraylist everytime an item is deleted to keep the index consistent -- */

    private ArrayList<String> check(ArrayList<String> hobbiesList) {
        ArrayList<String> newList= new ArrayList<>();
        newList.addAll(hobbiesList);
        return newList;
    }
}