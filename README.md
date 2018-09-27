# Passport_Inc_
![passport](https://user-images.githubusercontent.com/17169987/29760566-3cdd945e-8b92-11e7-922e-3d94d0a85f3c.png)

Android Mobile application efficient in creating amazing users' profiles. The user can __create__ a well-looking profile, can __sort different profiles__ in the way they want to, can __update hobbies__ , __background color__, and can __delete__ the profile. They need to provide __profile image, age, hobbies, name, and they all set to rock !!!__

- Male Profiles are usually Green
- Female are in usually blue

User always has the option to change from the Profile View.
The app UI is designed via Material Design Guidelines and dependencies libraries such as:
```javascript
dependencies {
    compile 'com.github.rubensousa:raiflatbutton:0.1'
    compile 'com.android.support:appcompat-v7:25.3.1'
    compile 'com.github.markushi:circlebutton:1.1'
    compile 'com.github.Q42:AndroidScrollingImageView:1.2'
    compile 'com.github.spiddekauga:MaterialShowcaseView:2.0.0'
    compile 'com.android.support:recyclerview-v7:25.3.1'
    compile 'com.android.support:design:25.3.1'
    compile 'com.github.clans:fab:1.6.4'
    compile 'com.mikhaellopez:circularimageview:3.0.2'
    compile 'me.drakeet.materialdialog:library:1.3.1'
    compile 'com.pnikosis:materialish-progress:1.7'
    compile 'petrov.kristiyan:colorpicker-library:1.1.4'
    compile 'com.rengwuxian.materialedittext:library:2.1.4'
    compile 'com.android.support:cardview-v7:25.3.1'
    compile 'com.firebase:firebase-client-android:2.3.1'
    compile 'com.android.support.constraint:constraint-layout:1.0.2'
    compile 'com.google.firebase:firebase-database:10.0.1'
    compile 'com.google.firebase:firebase-storage:10.0.1'
    compile 'com.google.firebase:firebase-auth:10.0.1'
    compile 'com.google.firebase:firebase-core:10.0.1'
    compile 'com.google.firebase:firebase-config:10.0.1'
    compile 'com.squareup.picasso:picasso:2.5.2'
    testCompile 'junit:junit:4.12'
    }
   ```

## Some screenshots from the app:
__Front Page__

![img_20170828_012454](https://user-images.githubusercontent.com/17169987/29760758-6967b5bc-8b93-11e7-8210-9374c0cdb18e.png)

__Recent Profiles Page__


![img_20170828_013338](https://user-images.githubusercontent.com/17169987/29760767-7b572d70-8b93-11e7-8a14-a40d25b12f4a.png)


__Profile creation Page__

![screenshot_20170828-015623](https://user-images.githubusercontent.com/17169987/29760907-6d30f45a-8b94-11e7-94b0-98bdbc6c75f4.png)

# Technologies used:
- **Android**
- **Java**
- **Firebase**
- **XML**

### Firebase API 

[![N|Solid](http://laptrinhx.com/imgs/925e6dc9-ef3d-4fce-8a5b-6e95c65dd8de.png)](https://firebase.google.com/docs/reference/android/packages)

Firebase provides a real time Google Cloud storage and serving as database and storage for the application.

## Code Samples:

**Reference to Firebase Database**
```javascript
try = {
      newRef= new Firebase("https://passportandroid-27fc6.firebaseio.com/");
      }
```

**Getting Snapshots of reference as in Json**
```javascript
   myRef.child("Profile").addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                profileList = new ArrayList < > ();
                Log.d("ProfilesValues", dataSnapshot.toString());
                for (DataSnapshot d: dataSnapshot.getChildren()) {
                    profile = d.getValue(Profile.class);
                    profileList.add(profile);
                }
                });
```

# Functionalities achieved are as follows:

 - **Filter the list to show only male or female profiles.** 
 - **Clear the filter to show all profiles.**
 - **Sort the list by age ascending or descending**
 - **Sort the list by name ascending or descending**
 - **Remove any sorts and go back to the default.**
 - **Add a new profile.**
 - **Tap on a profile and go to a profile view.**
 - **Remove a profile from the profile view.**
 - **Update a profile’s hobbies and background color from the profile view**

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D


# Author
__Priyank Verma__
__MADE WITH LOVE__ 
![heart](https://assets-cdn.github.com/images/icons/emoji/unicode/2764.png?v7)


### License
This project is licensed under the MIT License - see the [LICENSE.md](https://en.wikipedia.org/wiki/MIT_License) file for details



