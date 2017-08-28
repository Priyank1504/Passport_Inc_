package com.priyank.passport_inc;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.github.rubensousa.raiflatbutton.RaiflatButton;
import com.q42.android.scrollingimageview.ScrollingImageView;

public class MainActivity extends AppCompatActivity {
    TextView quote;
    RaiflatButton stepIn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("Passport_Inc");
        ScrollingImageView scrollingBackground = (ScrollingImageView) findViewById(R.id.scrolling_background);
        scrollingBackground.start();
        quote = (TextView) findViewById(R.id.quote);
        quote.setText(Html.fromHtml("&ldquo; " + "Road trips are full of fun only with Passport Parking" + " &rdquo;"));
        stepIn = (RaiflatButton) findViewById(R.id.buttonStepIn);
        stepIn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (isConnectedOnline() == true) {
                    Intent intent = new Intent(MainActivity.this, AllProfilesActivity.class);
                    startActivity(intent);
                } else {
                    Toast.makeText(MainActivity.this, "Seems like you have the connectivity issue, Please check your Internet Connection!", Toast.LENGTH_LONG).show();
                }
            }
        });
    }

 /* Checking for Internet Connectivity */

    private Boolean isConnectedOnline() {
        ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo networkInfo = cm.getActiveNetworkInfo();
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        } else {
            return false;
        }
    }
}