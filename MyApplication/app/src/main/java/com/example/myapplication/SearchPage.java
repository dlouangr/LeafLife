package com.example.myapplication;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class SearchPage extends Fragment {

    private EditText searchEditText;
    private RecyclerView searchResultsRecyclerView;
    private SearchResultsAdapter resultsAdapter; // You need to create this adapter

    public SearchPage() {
        // Required empty public constructor
    }

    public static SearchPage newInstance() {
        return new SearchPage();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_search_page, container, false); // Replace with your layout XML
        searchEditText = view.findViewById(R.id.searchEditText);
        searchResultsRecyclerView = view.findViewById(R.id.searchResultsRecyclerView);

        // Initialize the RecyclerView with a layout manager and adapter
        LinearLayoutManager layoutManager = new LinearLayoutManager(requireContext());
        searchResultsRecyclerView.setLayoutManager(layoutManager);
        resultsAdapter = new SearchResultsAdapter(); // You need to create this adapter
        searchResultsRecyclerView.setAdapter(resultsAdapter);

        // Set an OnEditorActionListener for the search EditText
        searchEditText.setOnEditorActionListener((v, actionId, event) -> {
            if (actionId == EditorInfo.IME_ACTION_DONE) {
                // Perform the search when the "Done" action is triggered
                performSearch(searchEditText.getText().toString());
                return true;
            }
            return false;
        }

        return view;
    }

    // Perform the search operation with the given query
    private void performSearch(String query) {
        // You should implement your search logic here
        // For example, you can update the RecyclerView with search results in the SearchResultsAdapter
        Toast.makeText(requireContext(), "Searching for: " + query, Toast.LENGTH_SHORT).show();
    }
}
