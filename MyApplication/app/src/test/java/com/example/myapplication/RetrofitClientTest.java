package com.example.myapplication;

import com.google.gson.JsonObject;
import org.junit.Test;
import retrofit2.Call;
import retrofit2.Response;

import java.io.IOException;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

public class RetrofitClientTest {

    // Replace with your actual token
    private static final String YOUR_TOKEN = "Kp-iRX49lqA7O9-zm5HO1NiperZb4Qs6HAo-jtt6oaI";
    private static final String YOUR_QUERY = "coconut";

    @Test
    public void testSearchPlants() throws IOException {
        // Create the actual Retrofit client
        TrefleAPI trefleAPI = RetrofitClient.getTrefleAPI(YOUR_TOKEN);

        // Make a request using the Retrofit client to the real server
        Call<JsonObject> call = trefleAPI.searchPlants(YOUR_TOKEN, YOUR_QUERY);
        Response<JsonObject> response = call.execute();

        // Check if the response is successful
        assertTrue(response.isSuccessful());

        // Check if the response body is not null
        assertNotNull(response.body());

        // Print the response body
        System.out.println("Response Body: " + response.body());

        // Add more assertions based on your API response structure
    }
}
