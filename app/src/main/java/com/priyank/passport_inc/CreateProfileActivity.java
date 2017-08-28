package com.priyank.passport_inc;

import android.content.Intent;
import android.net.Uri;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import com.firebase.client.Firebase;
import com.github.rubensousa.raiflatbutton.RaiflatButton;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;
import com.rengwuxian.materialedittext.MaterialEditText;
import com.spiddekauga.android.ui.showcase.MaterialShowcaseSequence;
import com.spiddekauga.android.ui.showcase.MaterialShowcaseView;
import com.spiddekauga.android.ui.showcase.ShowcaseConfig;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.UUID;

public class CreateProfileActivity extends AppCompatActivity {

    FirebaseStorage mStorage = FirebaseStorage.getInstance();
    private StorageReference storageRef;
    FirebaseAuth mAuth = FirebaseAuth.getInstance();
    Firebase newRef;
    ImageView userImage, addHobbies,showUserImage;
    MaterialEditText firstName, lastName, age, hobby;
    ArrayList<String> hobbiesList;
    private String textAge;
    RaiflatButton  save;
    private RadioGroup genderSelection;
    private RadioButton rb;
    private String userFirstName, userLastName, gender, profileUrl, id, profileColor;
    private int userAge;
    ArrayAdapter<String> itemsAdapter;
    ListView allHobbies;
    Uri selectedImageURI;
    private Uri link;
    Profile profile;
    private static final String CREATE_ID = "profileCreateSSequence";

    /* --- Uploading profile Image success callback --- */

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == RESULT_OK) {
            if (requestCode == 100) {
                selectedImageURI = data.getData();
                Picasso.with(CreateProfileActivity.this).load(selectedImageURI).noPlaceholder().centerCrop().fit()
                        .into(showUserImage);

                storageRef = mStorage.getReferenceFromUrl("gs://passportandroid-27fc6.appspot.com");
                StorageReference imagesRef = storageRef.child("images/" + selectedImageURI.getLastPathSegment());
                UploadTask uploadTask = imagesRef.putFile(selectedImageURI);
                uploadTask.addOnFailureListener(new OnFailureListener() {
                    @Override
                    public void onFailure(@NonNull Exception exception) {
                        // Handle unsuccessful uploads
                    }
                }).addOnSuccessListener(new OnSuccessListener<UploadTask.TaskSnapshot>() {
                    @SuppressWarnings("VisibleForTests")
                    @Override
                    public void onSuccess(UploadTask.TaskSnapshot taskSnapshot) {
                        // taskSnapshot.getMetadata() contains file metadata such as size, content-type, and download URL.
                        link = taskSnapshot.getDownloadUrl();
                        save.setEnabled(true);
                        save.setAlpha((float) 1.0);
                        //Log.d("Link:", link.toString());
                    }
                });
            }
        }
    }

    /* --- Checking if any and granting Annonymous authentication --- */

    @Override
    protected void onStart() {
        super.onStart();
        FirebaseUser user = mAuth.getCurrentUser();
        if (user != null) {

        } else {
            signInAnonymously();
        }
    }
    private void signInAnonymously() {
        mAuth.signInAnonymously().addOnSuccessListener(this, new OnSuccessListener<AuthResult>() {
            @Override
            public void onSuccess(AuthResult authResult) {
                // do your stuff
            }
        })
                .addOnFailureListener(this, new OnFailureListener() {
                    @Override
                    public void onFailure(@NonNull Exception exception) {
                      //  Log.e("tag", "signInAnonymously:FAILURE", exception);
                    }
                });
    }

    /* --- OnCreate--- */

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_create_profile);
        Firebase.setAndroidContext(this);
        Toolbar toolbar = (Toolbar) findViewById(R.id.myToolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        setTitle("Profile in progress . .");
        userImage = (ImageView) findViewById(R.id.imageViewUpload);
        addHobbies = (ImageView) findViewById(R.id.buttonAddHobbies);
        /* ---Implementing ShowCase View for Directions ---*/

        ShowcaseConfig profileCreateConfig = new ShowcaseConfig(CreateProfileActivity.this);
        profileCreateConfig.setDelay(0);
        MaterialShowcaseSequence profileCreateSequence = new MaterialShowcaseSequence(CreateProfileActivity.this, CREATE_ID);
        profileCreateSequence.setConfig(profileCreateConfig);
        profileCreateSequence.addSequenceItem(
                new MaterialShowcaseView.Builder(CreateProfileActivity.this)
                        .setTarget(userImage) // <--  target showcase
                        .setTitleText("Start with a happy picture !! ")
                        .setContentText("You are the one making your profile amazing :)" + "\n" +
                                "Tap on the pushing arrow to add hobbies in your profile"+ "\n"+
                                "Have fun :,) !!!")
                        .build()
        );
        // We update the config so that there is half second delay between each showcase view
        profileCreateConfig.setDelay(500);

        profileCreateSequence.addSequenceItem(
                new MaterialShowcaseView.Builder(CreateProfileActivity.this)
                        .setTitleText("Save your profile so that others can see !!!")
                        .setContentText("Can't see the save button ?? :)" + "\n" +
                                "Don't worry it will be there once you gave us your profile picture :) " + "\n" +
                                "Remember all the fields are required :,) " + "\n" +
                                "Go for it !!!")
                        .setDismissText("Got it")
                        .build()
        );
        profileCreateSequence.show();

        /* --- Initializing Ids'--- */

        showUserImage=(ImageView)findViewById(R.id.showHere);
        firstName = ( MaterialEditText) findViewById(R.id.editTextFirstName);
        lastName = ( MaterialEditText) findViewById(R.id.editTextLastName);
        age = ( MaterialEditText) findViewById(R.id.editTextAge);
        genderSelection = (RadioGroup) findViewById(R.id.radioGroup);
        hobby = ( MaterialEditText) findViewById(R.id.editTextHobbies);
        allHobbies = (ListView) findViewById(R.id.hobbies);

        save = (RaiflatButton) findViewById(R.id.buttonSave);
        hobbiesList = new ArrayList<String>();
        itemsAdapter =
                new ArrayAdapter<String>(CreateProfileActivity.this, android.R.layout.simple_list_item_1, hobbiesList);
        allHobbies.setAdapter(itemsAdapter);
        genderSelection.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, @IdRes int checkedId) {
                rb = (RadioButton) findViewById(checkedId);
             //   Log.d("checkedId", rb.getText().toString());
                gender = rb.getText().toString();
                if (gender.equals("Male")) {
                    profileColor = "BLUE";
                } else {
                    profileColor = "GREEN";
                }
            }
        });

        /* --- Accessing Gallery for importing User Profile Image --- */

        userImage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction(Intent.ACTION_OPEN_DOCUMENT);
                startActivityForResult(Intent.createChooser(intent, "Select Picture"), 100);
            }
        });
        save.setAlpha((float) .05);
        save.setEnabled(false);

        /*--- Addding Hobbies into Arraylist --- */

        addHobbies.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if ((hobby.getText().toString().length()) != 0) {
                    if (hobbiesList.size() < 4) {
                            String addHobby = hobby.getText().toString().toUpperCase();
                            Toast.makeText(CreateProfileActivity.this, hobby.getText().toString().toUpperCase() + " Added! ", Toast.LENGTH_SHORT).show();
                            hobby.setText("");
                            hobbiesList.add(addHobby);
                            itemsAdapter.notifyDataSetChanged();
                    }
                        else
                        {
                            Toast.makeText(CreateProfileActivity.this, "You have reached maximum limit of adding Hobbies!" + "\n" +
                                "Remeber: you can always update Hobbies from the profile.", Toast.LENGTH_LONG).show();
                        }
                } else
                    {
                         Toast.makeText(CreateProfileActivity.this, "Please enter something to add !", Toast.LENGTH_SHORT).show();
                    }
                }
             });

        /* --- Getting input values and pushing it into firebase databse --- */

        save.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (hobbiesList.size() > 0 && firstName.getText().toString() != "" && firstName.getText().toString() != "" && gender !=null)
                {
                        textAge=age.getText().toString();
                        profile = new Profile();
                        userFirstName = firstName.getText().toString();
                        userLastName = lastName.getText().toString();
                        userAge = !textAge.equals("")?Integer.parseInt(textAge) : 0;
                        profileUrl = link.toString();
                        id = getId();
                        profile.setHobbies(hobbiesList);
                        profile.id=id;
                        profile.firstName = userFirstName;
                        profile.lastName = userLastName;
                        profile.age = userAge;
                        profile.imageUrl = profileUrl;
                        profile.gender = gender;
                        profile.color = profileColor;
                    try
                    {
                        newRef= new Firebase("https://passportandroid-27fc6.firebaseio.com/");
                    }
                    catch (Exception e){}
                        Firebase mUserRef = newRef.child("Profile").child(id);
                        mUserRef.setValue(profile);
                        Toast.makeText(CreateProfileActivity.this, "Profile Successfully Created", Toast.LENGTH_LONG).show();
                        finish();
                }
                else
                    {
                        Toast.makeText(CreateProfileActivity.this, "Can't create the profile. Please, fill all the fields correctly!", Toast.LENGTH_LONG).show();
                    }
            }
        });
    }

    /* --- Generating unique integer Id's for each user profile --- */

    public String getId() {
        id = String.valueOf(UUID.randomUUID());
        return id;
    }

    @Override
    public boolean onSupportNavigateUp(){
        finish();
        return true;
    }
}
