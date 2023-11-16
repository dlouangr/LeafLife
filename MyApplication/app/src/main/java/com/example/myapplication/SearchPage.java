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
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import java.util.*;
import retrofit2.*;

public class SearchPage extends Fragment {

    private EditText searchEditText;
    private RecyclerView searchResultsRecyclerView;
    private List<Plant> searchResultsList;
    private SearchResultsAdapter searchResultsAdapter;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_search, container, false);

        // Initialize Retrofit
        TrefleAPI trefleAPI = RetrofitClient.getTrefleAPI();

        searchEditText = view.findViewById(R.id.searchEditText);
        searchResultsRecyclerView = view.findViewById(R.id.searchResultsRecyclerView);

        // Set up RecyclerView and adapter
        searchResultsList = new ArrayList<>();
        searchResultsAdapter = new SearchResultsAdapter(getActivity(), searchResultsList); // Pass getActivity() as the context
        searchResultsRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        searchResultsRecyclerView.setAdapter(searchResultsAdapter);

        // Set up search button click listener
        Button searchButton = view.findViewById(R.id.searchButton);
        searchButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                performSearch(trefleAPI);
            }
        });

        return view;
    }

    private void performSearch(TrefleAPI trefleAPI) {
        String query = searchEditText.getText().toString();
        if (!query.isEmpty()) {
            // Make API request
            Call<JsonObject> call = trefleAPI.searchPlants(query, "YOUR_TREFLE_TOKEN");
            call.enqueue(new Callback<JsonObject>() {
                @Override
                public void onResponse(Call<JsonObject> call, Response<JsonObject> response) {
                    if (response.isSuccessful()) {
                        JsonObject jsonResponse = response.body();
                        JsonArray data = jsonResponse.getAsJsonArray("data");

                        // Clear previous search results
                        searchResultsList.clear();

                        // Parse the array of plants
                        for (JsonElement element : data) {
                            JsonObject plantObject = element.getAsJsonObject();

                            String commonName = plantObject.get("common_name").getAsString();
                            String family = plantObject.get("family").getAsString();
                            String genus = plantObject.get("genus").getAsString();
                            int id = plantObject.get("id").getAsInt();
                            String imageUrl = plantObject.get("image_url").getAsString();
                            String scientificName = plantObject.get("scientific_name").getAsString();

                            Plant plant = new Plant(commonName, family, genus, id, imageUrl, scientificName);
                            searchResultsList.add(plant);
                        }

                        // Notify the adapter that the data set has changed
                        searchResultsAdapter.notifyDataSetChanged();
                    } else {
                        Toast.makeText(getActivity(), "Error: " + response.message(), Toast.LENGTH_SHORT).show();
                    }
                }

                @Override
                public void onFailure(Call<JsonObject> call, Throwable t) {
                    Toast.makeText(getActivity(), "Error: " + t.getMessage(), Toast.LENGTH_SHORT).show();
                }
            });
        }
    }

}
