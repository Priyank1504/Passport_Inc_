package com.priyank.passport_inc;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.support.design.widget.CoordinatorLayout;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import com.mikhaellopez.circularimageview.CircularImageView;
import com.pnikosis.materialishprogress.ProgressWheel;
import com.spiddekauga.android.ui.showcase.MaterialShowcaseSequence;
import com.spiddekauga.android.ui.showcase.MaterialShowcaseView;
import com.spiddekauga.android.ui.showcase.ShowcaseConfig;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import at.markushi.ui.CircleButton;
import me.drakeet.materialdialog.MaterialDialog;
import petrov.kristiyan.colorpicker.ColorPicker;

public class ShowProfileActivity extends AppCompatActivity {
    private TextView fullName, showAge;
    private static final String SHOW_ID = "profileSequence";
    ProgressWheel pb;
    private ListView listViewHobbies;
    private HobbiesAdapter hobbiesAdapter;
    private ArrayList < String > hobbies;
    private CoordinatorLayout layout;
    CircleButton pickColor;
    private ArrayList < Profile > profileList;
    ImageView userImage, selectGender;
    private String profilekey;
    private MaterialDialog mMaterialDialog;
    ColorPicker colorPicker;
    DatabaseReference ref;
    Map < String, Object > colorUpdates = new HashMap <String, Object> ();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_show_profile);
        setTitle("Profile");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

         /* --- Getting Intent Values --- */

        Intent intent = getIntent();
        if (intent.getExtras() != null) {
            profileList = (ArrayList < Profile > ) intent.getSerializableExtra("LIST");
            profilekey = intent.getStringExtra("ID");
            Log.d("ListIS", profilekey);
        } else {
            Toast.makeText(ShowProfileActivity.this, "Some Error occured while geting profile information !", Toast.LENGTH_SHORT).show();
        }

        /* --- Innitializing Ids' --- */

        listViewHobbies = (ListView) findViewById(R.id.listViewHobbies);
        layout = (CoordinatorLayout) findViewById(R.id.relativeLayout);
        fullName = (TextView) findViewById(R.id.textViewName);
        showAge = (TextView) findViewById(R.id.textViewAge);
        pickColor = (CircleButton) findViewById(R.id.buttonColor);
        selectGender = (ImageView) findViewById(R.id.imageViewGender);
        userImage = (ImageView) findViewById(R.id.circularImageView);
        pb = new ProgressWheel(ShowProfileActivity.this);
        pb.setBarColor(Color.BLUE);
        pb.setVisibility(View.VISIBLE);

        /* ---Implementing ShowCase View for Directions ---*/

        ShowcaseConfig profileConfig = new ShowcaseConfig(ShowProfileActivity.this);
        profileConfig.setDelay(0);
        MaterialShowcaseSequence profileSequence = new MaterialShowcaseSequence(ShowProfileActivity.this, SHOW_ID);
        profileSequence.setConfig(profileConfig);
        profileSequence.addSequenceItem(
                new MaterialShowcaseView.Builder(ShowProfileActivity.this)
                        .setTarget(pickColor) // <-- target showcase
                        .setTitleText("Ugh! Didn't like the background color ? ")
                        .setContentText("Tap on it to choose the color to make your profile more amazing :)" + "\n" +
                                "Have fun :,) !!!")
                        .build()
        );
        // We update the config so that there is half second delay between each showcase view
        profileConfig.setDelay(700);

        profileSequence.addSequenceItem(
                new MaterialShowcaseView.Builder(ShowProfileActivity.this)
                        .setTitleText("Update your Hobbies and delete the profile if it's gettting less amazing and create new !!!")
                        .setContentText("Tap on 'Pick a background color' to update the background :)" + "\n" +
                                "Swipe up to see all your Hobbies and start updating them if you feel like :) " + "\n" +
                                "You all set to Rock 'n' Roll :,) " + "\n" +
                                "Have Fun !!!")
                        .setDismissText("Got it")
                        .build()
        );
        profileSequence.show();

    /* --- Iterating over Arraylist to get user value using user' key--- */

        for (Profile p: profileList) {
            if (p.getId().equals(profilekey)) {
                pb.setVisibility(View.INVISIBLE);
                Picasso.with(ShowProfileActivity.this).load(p.getImageUrl()).into(userImage);
                showAge.setText(String.valueOf(p.getAge()));
                fullName.setText(p.getFirstName().toUpperCase() + " " + p.getLastName().toUpperCase());
                if (p.getColor().equals("GREEN"))
                    {
                        layout.setBackgroundColor(Color.parseColor("#ABEBC6"));
                    }
                else if (p.getColor().equals("BLUE"))
                    {
                        layout.setBackgroundColor(Color.parseColor("#AED6F1"));
                    }
                else
                    {
                        layout.setBackgroundColor(Color.parseColor(p.getColor()));
                    }
                if (p.getGender().equals("Male")) {
                        selectGender.setImageDrawable(getResources().getDrawable(R.drawable.male));
                    }
                else {
                        selectGender.setImageDrawable(getResources().getDrawable(R.drawable.female));
                    }
                hobbies = new ArrayList < > ();
                hobbies.addAll(p.getHobbies());
                hobbiesAdapter = new HobbiesAdapter(ShowProfileActivity.this, hobbies, p.getId());
                listViewHobbies.setAdapter(hobbiesAdapter);
                hobbiesAdapter.notifyDataSetChanged();
            }
        }

        /* --- Background change --- */

        pickColor.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                colorPicker = new ColorPicker(ShowProfileActivity.this);
                colorPicker.show();
                colorPicker.setOnChooseColorListener(new ColorPicker.OnChooseColorListener() {
                    @Override
                    public void onChooseColor(int position, int color) {
                        if(color == 0)
                            {
                                    Toast.makeText(ShowProfileActivity.this, " Please choose a color and try again !", Toast.LENGTH_SHORT).show();
                            }
                        else{
                                final String hexColor = "#" + Integer.toHexString(color).substring(2);
                                Log.d("ColorPick", String.valueOf(hexColor));
                                    try
                                    {
                                            layout.setBackgroundColor(color);
                                            ref = FirebaseDatabase.getInstance().getReference().child("Profile").child(profilekey);
                                            colorUpdates.put("/color", hexColor);
                                            ref.updateChildren(colorUpdates);
                                            Toast.makeText(ShowProfileActivity.this, " Update color successfully on the amazing profile!", Toast.LENGTH_SHORT).show();
                                    }
                                    catch (Exception e)
                                    {
                                             Log.d("colorError", e.toString());

                                    }
                        }
                    }
                    @Override
                    public void onCancel() {}
                });
            }
        });
    }

    /* --- Dialog box asking for user permission to delete the profile --- */

    private void AskUser(final String profilekey)
        {
            mMaterialDialog = new MaterialDialog(ShowProfileActivity.this);
            mMaterialDialog.setTitle("Profile will no longer be seen")
                    .setMessage("Are you sure you want to remove this user's profile? ")
                    .setPositiveButton("OK", new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            ref = FirebaseDatabase.getInstance().getReference().child("Profile").child(profilekey);
                            Toast.makeText(ShowProfileActivity.this, "User profile is deleted", Toast.LENGTH_SHORT).show();
                            ref.setValue(null);
                            mMaterialDialog.dismiss();
                            finish();
                        }
                    })
                    .setNegativeButton("CANCEL", new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            Toast.makeText(ShowProfileActivity.this, " Profile not deleted !", Toast.LENGTH_SHORT).show();
                            mMaterialDialog.dismiss();
                        }
                    });
            mMaterialDialog.show();
        }

    @Override
    public boolean onSupportNavigateUp()
    {
        finish();
        return true;
    }

    /* --- Implementing Menu --- */
    @Override
    public boolean onCreateOptionsMenu(Menu menu)
    {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.menu, menu);
        return true;
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle the action bar items
        switch (item.getItemId()) {
            case R.id.delete:
                AskUser(profilekey);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}