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
        TrefleAPI trefleAPI = RetrofitClient.getTrefleAPI("Kp-iRX49lqA7O9-zm5HO1NiperZb4Qs6HAo-jtt6oaI");

        searchEditText = view.findViewById(R.id.searchEditText);
        searchResultsRecyclerView = view.findViewById(R.id.searchResultsRecyclerView);

        // Set up RecyclerView and adapter
        searchResultsList = new ArrayList<>();
        searchResultsAdapter = new SearchResultsAdapter(getActivity(), searchResultsList);
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
            Call<JsonObject> call = trefleAPI.searchPlants("Kp-iRX49lqA7O9-zm5HO1NiperZb4Qs6HAo-jtt6oaI", query);
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

                            int id = plantObject.get("id").getAsInt();
                            String commonName = getStringFromJson(plantObject, "common_name");
                            String family = getStringFromJson(plantObject, "family");
                            String genus = getStringFromJson(plantObject, "genus");
                            String imageUrl = getStringFromJson(plantObject, "image_url");
                            String scientificName = getStringFromJson(plantObject, "scientific_name");

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

                private String getStringFromJson(JsonObject jsonObject, String key) {
                    JsonElement element = jsonObject.get(key);
                    return (element != null && !element.isJsonNull()) ? element.getAsString() : "";
                }
            });
        }
    }
}
