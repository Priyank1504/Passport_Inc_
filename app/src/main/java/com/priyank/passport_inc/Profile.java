package com.priyank.passport_inc;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.UUID;

/**
 * Created by Priyank Verma on 8/19/2017.
 * Model Class Implementation
 * Getter Setter
 */

public class Profile implements Serializable {
    String firstName, lastName, imageUrl, color, gender, id;
    int age;
    ArrayList<String> hobbies;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public ArrayList<String> getHobbies() {
        return hobbies;
    }

    public void setHobbies(ArrayList<String> hobbies) {
        this.hobbies = hobbies;
    }

    @Override
    public String toString() {
        return "Profile{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", color='" + color + '\'' +
                ", gender='" + gender + '\'' +
                ", id='" + id + '\'' +
                ", age=" + age +
                ", hobbies=" + hobbies +
                '}';
    }
}
