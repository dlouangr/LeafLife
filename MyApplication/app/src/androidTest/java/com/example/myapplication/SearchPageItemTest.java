package com.example.myapplication;

import android.os.Bundle;
import android.widget.TextView;

import androidx.fragment.app.testing.FragmentScenario;
import androidx.recyclerview.widget.RecyclerView;
import androidx.test.espresso.Espresso;
import androidx.test.espresso.assertion.ViewAssertions;
import androidx.test.espresso.matcher.ViewMatchers;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.filters.LargeTest;

import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(AndroidJUnit4.class)
@LargeTest
public class SearchPageItemTest {

    @Test
    public void testSearchResults() {
        // Start the SearchPage fragment
        FragmentScenario.launchInContainer(SearchPage.class);

        // Provide dummy data to the SearchPage fragment
        Bundle dummyData = new Bundle();
        dummyData.putString("dummy_title", "Dummy Title");
        dummyData.putString("dummy_description", "Dummy Description");
        FragmentScenario<SearchPage> scenario = FragmentScenario.launchInContainer(SearchPage.class, dummyData);

        // Wait for a short time to allow the fragment to be created
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        // Check if the dummy data is displayed in the RecyclerView
        Espresso.onView(ViewMatchers.withId(R.id.searchResultsRecyclerView))
                .check(ViewAssertions.matches(ViewMatchers.hasMinimumChildCount(1))); // Change to 5 if you want 5 items

        // Optionally, you can check specific content of the first item in the RecyclerView
        String expectedTitle = "Dummy Title";
        String expectedDescription = "Dummy Description";

        Espresso.onView(ViewMatchers.withText(expectedTitle))
                .check(ViewAssertions.matches(ViewMatchers.isDisplayed()));
        Espresso.onView(ViewMatchers.withText(expectedDescription))
                .check(ViewAssertions.matches(ViewMatchers.isDisplayed()));
    }
}
