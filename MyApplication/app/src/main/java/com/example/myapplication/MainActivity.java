package com.example.myapplication;

import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.bottomnavigation.BottomNavigationView;

public class MainActivity extends AppCompatActivity {

    private BottomNavigationView bottomNavigationView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize the BottomNavigationView
        bottomNavigationView = findViewById(R.id.bottom_navigation);
        bottomNavigationView.setOnItemSelectedListener(item -> {
            return onNavigationItemSelected(item);
        });

        if (savedInstanceState == null) {
            // Default fragment to display when the activity is first created (e.g., HomeFragment)
            getSupportFragmentManager().beginTransaction()
                    .replace(R.id.fragmentContainer, new HomePage())
                    .commit();
        }
    }

    private boolean onNavigationItemSelected(MenuItem item) {
        Fragment selectedFragment = null;

        if (item.getItemId() == R.id.navigation_home) {
            selectedFragment = new HomePage();
        } else if (item.getItemId() == R.id.navigation_search) {
            selectedFragment = new SearchPage();
        } else if (item.getItemId() == R.id.navigation_social) {
            selectedFragment = new SocialPage();
        }

        if (selectedFragment != null) {
            getSupportFragmentManager().beginTransaction()
                    .replace(R.id.fragmentContainer, selectedFragment)
                    .commit();
            return true; // Return true if you've handled the item
        }

        return false; // Return false if you haven't handled the item
    }

    private void replaceFragment(Fragment fragment) {
        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        transaction.replace(R.id.fragmentContainer, fragment);
        transaction.addToBackStack(null); // Optional: Add to back stack for back navigation
        transaction.commit();
    }

    @Override
    public void onBackPressed() {
        // Handle back button press (e.g., pop back stack or handle custom back navigation)
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            getSupportFragmentManager().popBackStack();
        } else {
            super.onBackPressed();
        }
    }
}
