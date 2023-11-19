package com.example.myapplication;

import com.google.gson.JsonObject;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

public interface TrefleAPI {

    @GET("plants/search")
    Call<JsonObject> searchPlants(@Query("token") String token, @Query("q") String query);
}
