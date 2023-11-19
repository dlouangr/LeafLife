package com.example.myapplication;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class SearchResultItem extends RelativeLayout {

    private ImageView resultImage;
    private TextView resultTitle;
    private TextView resultDescription;

    public SearchResultItem(Context context) {
        super(context);
        init(context);
    }

    public SearchResultItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public SearchResultItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        // Inflate the layout
        inflate(context, R.layout.search_result_item, this);

        // Find views
        resultImage = findViewById(R.id.resultImage);
        resultTitle = findViewById(R.id.resultTitle);
        resultDescription = findViewById(R.id.resultDescription);
    }

    public void setResultImage(int resourceId) {
        resultImage.setImageResource(resourceId);
    }

    public void setResultTitle(String title) {
        resultTitle.setText(title);
    }

    public void setResultDescription(String description) {
        resultDescription.setText(description);
    }
}
