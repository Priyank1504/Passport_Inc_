package com.priyank.passport_inc;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
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
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class AllProfilesActivity extends AppCompatActivity {

    private static final String SHOWCASE_ID = "sequence";
    CircularImageView addProfile;
    ProgressWheel pb;
    private DatabaseReference myRef;
    private ListView listViewProfile;
    private ArrayList <Profile> profileList, maleList, femaleList;
    private ProfileAdapter profileAdapter;
    FloatingActionMenu menuItems;
    private Profile profile;
    FloatingActionButton reset, ageDesc, ageAsc, nameDesc, nameAsc, maleOnly, femaleOnly;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_all_profiles);
        setTitle("Profiles");

        /* --- Implementing Progress bar --- */

        pb = new ProgressWheel(AllProfilesActivity.this);
        pb.setBarColor(Color.BLUE);
        pb.setVisibility(View.VISIBLE);

        /* --- Initializing Ids'--- */

        addProfile = (CircularImageView) findViewById(R.id.addButton);
        addProfile.setImageResource(R.drawable.create);
        menuItems = (FloatingActionMenu) findViewById(R.id.showMenu);
        menuItems.setClosedOnTouchOutside(true);
        reset = (FloatingActionButton) findViewById(R.id.floatingnormal);
        ageDesc = (FloatingActionButton) findViewById(R.id.dAge);
        ageAsc = (FloatingActionButton) findViewById(R.id.aAge);
        nameAsc = (FloatingActionButton) findViewById(R.id.aName);
        nameDesc = (FloatingActionButton) findViewById(R.id.dName);
        maleOnly = (FloatingActionButton) findViewById(R.id.orderMale);
        femaleOnly = (FloatingActionButton) findViewById(R.id.orderFemale);
        listViewProfile = (ListView) findViewById(R.id.profilesListView);

        /* ---Implementing ShowCase View for Directions ---*/

        ShowcaseConfig config = new ShowcaseConfig(this);
        config.setDelay(0);
        MaterialShowcaseSequence sequence = new MaterialShowcaseSequence(this, SHOWCASE_ID);
        sequence.setConfig(config);
        sequence.addSequenceItem(
                new MaterialShowcaseView.Builder(this)
                        .setTarget(addProfile) // <-- target showcase
                        .setTitleText("Welcome Folks !!!")
                        .setContentText("Glad you are here :)" + "\n" +
                                "Tap on the Add button to create amazing profiles :,) " + "\n" +
                                "Enjoy !!!")
                        .build()
        );
        // We update the config so that there is half second delay between each showcase view
        config.setDelay(450);

        sequence.addSequenceItem(
                new MaterialShowcaseView.Builder(this)
                        .setTitleText("Got some cool functionalities for you'll !!!")
                        .setContentText(" Filter the amazing profiles list :)" + "\n" +
                                "as per you required and have fun :,) " + "\n" +
                                "Made with Love <3 !!!")
                        .setDismissText("Got it")
                        .build()
        );
        sequence.show();
        //Getting the Snapshot of all profiles
        GetUserValue(1);

        /* --- Defining EventListeners for each user request --- */

        addProfile.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(AllProfilesActivity.this, CreateProfileActivity.class);
                startActivity(intent);
            }
        });
        maleOnly.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pb.setVisibility(View.VISIBLE);
                GetUserValue(R.id.orderMale);
            }
        });
        femaleOnly.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pb.setVisibility(View.VISIBLE);
                GetUserValue(R.id.orderFemale);
            }
        });
        reset.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pb.setVisibility(View.VISIBLE);
                GetUserValue(1);
            }
        });
        ageAsc.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pb.setVisibility(View.VISIBLE);
                GetUserValue(R.id.aAge);
            }
        });
        ageDesc.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pb.setVisibility(View.VISIBLE);
                GetUserValue(R.id.dAge);
            }
        });
        nameDesc.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pb.setVisibility(View.VISIBLE);
                GetUserValue(R.id.dName);
            }
        });
        nameAsc.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pb.setVisibility(View.VISIBLE);
                GetUserValue(R.id.aName);
            }
        });
    }

    @Override
    protected void onResume() {
        super.onResume();
    }

    /* --- Fetching the values' snapshot in response from Firebase Database --- */
    /* --- Assigning it into Arraylist for further operations  --- */

    private void GetUserValue(int id) {
        final int getOperationId = id;
        myRef = FirebaseDatabase.getInstance().getReference();
        myRef.child("Profile").addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                profileList = new ArrayList < > ();
                Log.d("ProfilesValues", dataSnapshot.toString());
                for (DataSnapshot d: dataSnapshot.getChildren()) {
                    profile = d.getValue(Profile.class);
                    profileList.add(profile);
                }
                ProfileDisplay(profileList, getOperationId);
            }
            @Override
            public void onCancelled(DatabaseError error) {
                // Failed to read value
                Log.w("TAG", "Failed to read value.", error.toException());
            }
        });
    }

    /* --- Getting user response for each event listener on Floating action buttons --- */

    private void ProfileDisplay(final ArrayList < Profile > profileList, int id) {
        switch (id) {
            case 1:
                Log.d("profileList_1", profileList.toString());
                Show(profileList);
                break;

            case R.id.orderMale:
                Log.d("profileList_aAge", profileList.toString());
                maleList = new ArrayList < > ();
                for (Profile p: profileList) {
                    if (p.getGender().equals("Male")) {
                        maleList.add(p);
                    }
                }
                if (maleList.size() > 0) {
                    Show(maleList);
                } else {
                    Toast.makeText(AllProfilesActivity.this, "No Males Profiles has been created yet!", Toast.LENGTH_LONG).show();
                    listViewProfile.setVisibility(View.INVISIBLE);
                }
                Log.d("maleList_aAge", maleList.toString());
                break;

            case R.id.orderFemale:
                Log.d("profileList_aAge", profileList.toString());
                femaleList = new ArrayList < > ();
                for (Profile p: profileList) {
                    if (p.getGender().equals("Female")) {
                        femaleList.add(p);
                    }
                }
                if (femaleList.size() > 0) {
                    Show(femaleList);
                } else {
                    Toast.makeText(AllProfilesActivity.this, "No Females Profiles has been created yet!", Toast.LENGTH_LONG).show();
                    listViewProfile.setVisibility(View.INVISIBLE);
                }
                break;

            case R.id.aAge:
                Log.d("profileList_aAge", profileList.toString());
                Collections.sort(profileList, new Comparator < Profile > () {
                    @SuppressLint("NewApi")
                    public int compare(Profile p1, Profile p2) {

                        return Integer.compare(p1.getAge(), p2.getAge());
                    }

                });
                Log.d("profileList_aAge", profileList.toString());
                Show(profileList);
                break;

            case R.id.dAge:
                Log.d("profileList_dAge", profileList.toString());
                Collections.sort(profileList, new Comparator < Profile > () {
                    @SuppressLint("NewApi")
                    public int compare(Profile p1, Profile p2) {

                        return Integer.compare(p2.getAge(), p1.getAge());
                    }
                });
                Show(profileList);
                break;

            case R.id.aName:
                Log.d("profileList_aName", profileList.toString());

                Collections.sort(profileList, new Comparator < Profile > () {
                    public int compare(Profile p1, Profile p2) {
                        return p1.getFirstName().compareToIgnoreCase(p2.getFirstName());
                    }
                });
                Show(profileList);
                break;

            case R.id.dName:
                Log.d("profileList_dName", profileList.toString());
                Collections.sort(profileList, new Comparator < Profile > () {
                    public int compare(Profile p1, Profile p2) {
                        return p2.getFirstName().compareToIgnoreCase(p1.getFirstName());
                    }
                });
                Show(profileList);
                break;

            default:
//                Show(profileList);
        }
    }

    /* --- Setting adapter into ListView --- */

    private void Show(final ArrayList < Profile > profileList) {
        pb.setVisibility(View.INVISIBLE);
        listViewProfile.setVisibility(View.VISIBLE);
        profileAdapter = new ProfileAdapter(AllProfilesActivity.this, profileList);
        listViewProfile.setAdapter(profileAdapter);
        profileAdapter.notifyDataSetChanged();

        /* --- Implementing EventHandler to show Profile View of selected profile --- */

        listViewProfile.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView < ? > parent, View view, int position, long id) {
                Intent intent = new Intent(AllProfilesActivity.this, ShowProfileActivity.class);
                intent.putExtra("LIST", profileList);
                intent.putExtra("ID", profileList.get(position).getId());
                startActivity(intent);
            }
        });
    }
}