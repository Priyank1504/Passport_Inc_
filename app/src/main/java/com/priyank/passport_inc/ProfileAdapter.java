package com.priyank.passport_inc;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.mikhaellopez.circularimageview.CircularImageView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.Transformation;
import java.util.ArrayList;

/**
 * Created by Priyank Verma on 8/20/2017.
 */

public class ProfileAdapter extends BaseAdapter {
    private CircularImageView userImage;
    private Context context;
    Profile profile;
    private ArrayList < Profile > profiles;
    private ImageView genderImage;
    private TextView userName, userAge;

    public ProfileAdapter(Context context, ArrayList < Profile > profiles) {
        this.context = context;
        this.profiles = profiles;
    }

    @Override
    public int getCount() {
        return profiles.size();
    }

    @Override

    public Object getItem(int position) {
        return profiles.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = View.inflate(context, R.layout.list_items, null);
        }
        System.gc();
        userImage = (CircularImageView) convertView.findViewById(R.id.profileImage);
        userName = (TextView) convertView.findViewById(R.id.profileName);
        userAge = (TextView) convertView.findViewById(R.id.textViewAge);
        genderImage = (ImageView) convertView.findViewById(R.id.imageViewGender);
        profile = profiles.get(position);
        Picasso.with(convertView.getContext()).load(profile.getImageUrl()).into(userImage);
        userName.setText(profile.getFirstName().toUpperCase() + " " + profile.getLastName().toUpperCase());
        userAge.setText((String.valueOf(profile.getAge())));
        if (profile.gender.equals("Male")) {
            genderImage.setImageResource(R.drawable.male);
        } else {
            genderImage.setImageResource(R.drawable.female);
        }

        if (profile.getColor().equals("BLUE")) {
            convertView.setBackgroundColor(Color.parseColor("#AED6F1"));
        } else if (profile.getColor().equals("GREEN")) {
            convertView.setBackgroundColor(Color.parseColor("#ABEBC6"));
        } else {
            convertView.setBackgroundColor(Color.parseColor(profile.getColor()));
        }
        return convertView;
    }
}