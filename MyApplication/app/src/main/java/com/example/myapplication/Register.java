package com.example.myapplication;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

public class Register extends Fragment {

    private EditText emailEditText;
    private EditText passwordEditText;
    private EditText username;
    private Button registerButton;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_register, container, false);

        // Initialize UI components
        emailEditText = view.findViewById(R.id.registration_email);
        passwordEditText = view.findViewById(R.id.registration_password);
        username = view.findViewById(R.id.Username);
        registerButton = view.findViewById(R.id.registration_button);

        // Set an OnClickListener for the register button
        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Get user input
                String email = emailEditText.getText().toString();
                String password = passwordEditText.getText().toString();

                // Check for improper email format
                if (!isEmailValid(email)) {
                    showToast("Invalid email format");
                }
                // Check for missing email, password, or username
                else if (email.isEmpty() || password.isEmpty() || username.getText().toString().isEmpty()) {
                    showToast("All fields must be filled.");
                } else {
                    // Perform registration logic here
                    // You can add your own registration process here

                    // For this example, simply display a success message
                    showToast("Registration successful");

                    // Navigate to the login fragment upon successful registration
                    navigateToLoginFragment();
                }
            }
        });

        return view;
    }

    private void showToast(String message) {
        Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show();
    }

    // Simple email format validation (you can use a more robust method)
    private boolean isEmailValid(String email) {
        return android.util.Patterns.EMAIL_ADDRESS.matcher(email).matches();
    }

    private void navigateToLoginFragment() {
        // Create a new Login fragment
        Login loginFragment = new Login();

        // Get the fragment manager
        FragmentManager fragmentManager = requireActivity().getSupportFragmentManager();

        // Start a new fragment transaction
        FragmentTransaction transaction = fragmentManager.beginTransaction();

        // Replace the current fragment with the login fragment
        transaction.replace(R.id.fragmentContainer, loginFragment);

        // Add the transaction to the back stack and allow the user to navigate back
        transaction.addToBackStack(null);

        // Commit the transaction
        transaction.commit();
    }
}
