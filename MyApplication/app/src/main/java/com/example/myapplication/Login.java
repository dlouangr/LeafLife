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
import androidx.fragment.app.FragmentTransaction;

public class Login extends Fragment {

    private EditText emailEditText;
    private EditText passwordEditText;
    private Button loginButton;
    private Button registerButton;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_login, container, false);

        // Initialize UI components
        emailEditText = view.findViewById(R.id.editTextTextEmailAddress);
        passwordEditText = view.findViewById(R.id.editTextTextPassword);
        loginButton = view.findViewById(R.id.button);
        registerButton = view.findViewById(R.id.button2);

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

                        // After successful login, navigate to the HomePage fragment
                        FragmentTransaction transaction = requireActivity().getSupportFragmentManager().beginTransaction();
                        transaction.replace(R.id.fragmentContainer, new HomePage());
                        transaction.addToBackStack(null); // Optional, to add the transaction to the back stack
                        transaction.commit();
                    } else {
                        showToast("Invalid email format");
                    }
                }
            }
        });

        // Set an OnClickListener for the register button
        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Replace the content with the RegisterFragment
                FragmentTransaction transaction = requireActivity().getSupportFragmentManager().beginTransaction();
                transaction.replace(R.id.fragmentContainer, new Register());
                transaction.addToBackStack(null); // Optional, to add the transaction to the back stack
                transaction.commit();
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
}
