package com.example.myapplication;

public class Plant {
    private String commonName;
    private String family;
    private String genus;
    private int id;
    private String imageUrl;
    private String scientificName;

    public Plant(String commonName, String family, String genus, int id, String imageUrl, String scientificName) {
    }

    // Getter methods
    public String getCommonName() {
        return commonName;
    }

    public String getFamily() {
        return family;
    }

    public String getGenus() {
        return genus;
    }

    public int getId() {
        return id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public String getScientificName() {
        return scientificName;
    }
}
