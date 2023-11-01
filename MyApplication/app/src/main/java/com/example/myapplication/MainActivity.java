package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private EditText emailEditText;
    private EditText passwordEditText;
    private Button loginButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize UI components
        emailEditText = findViewById(R.id.editTextTextEmailAddress);
        passwordEditText = findViewById(R.id.editTextTextPassword);
        loginButton = findViewById(R.id.button);

        // Set an OnClickListener for the login button
        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Get user input
                String email = emailEditText.getText().toString();
                String password = passwordEditText.getText().toString();

                // Check for empty fields
                if (email.isEmpty() || password.isEmpty()) {
                    showToast("Email and password fields must not be empty.");
                } else {
                    // Check for a properly formatted email (you can add more validation here)
                    if (isEmailValid(email)) {
                        // For simplicity, we're not checking the password here.
                        // In a real app, you should validate the password as well.
                        showToast("Login successful");
                    } else {
                        showToast("Invalid email format");
                    }
                }
            }
        });
    }

    private void showToast(String message) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }

    // Simple email format validation (you can use a more robust method)
    private boolean isEmailValid(String email) {
        return android.util.Patterns.EMAIL_ADDRESS.matcher(email).matches();
    }
}
