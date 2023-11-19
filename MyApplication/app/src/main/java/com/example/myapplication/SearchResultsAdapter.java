package com.example.myapplication;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;

import java.util.List;

public class SearchResultsAdapter extends RecyclerView.Adapter<SearchResultsAdapter.ViewHolder> {

    private List<Plant> searchResultsList;
    private Context context;

    public SearchResultsAdapter(Context context, List<Plant> searchResultsList) {
        this.context = context;
        this.searchResultsList = searchResultsList;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.search_result_item, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        Plant plant = searchResultsList.get(position);

        // Bind data to ViewHolder views
        holder.resultTitle.setText(plant.getCommonName());
        holder.resultDescription.setText(plant.getScientificName());

        // Load images using Glide
        Glide.with(context)
                .load(plant.getImageUrl())
                .apply(new RequestOptions().placeholder(R.drawable.placeholder_image))
                .into(holder.resultImage);
    }

    @Override
    public int getItemCount() {
        return searchResultsList.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        ImageView resultImage;
        TextView resultTitle;
        TextView resultDescription;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            resultImage = itemView.findViewById(R.id.resultImage);
            resultTitle = itemView.findViewById(R.id.resultTitle);
            resultDescription = itemView.findViewById(R.id.resultDescription);
        }
    }
}
