package com.example.nicholasdry.testapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.ToggleButton;

import org.w3c.dom.Text;

public class MainActivity extends AppCompatActivity {

    TextView t1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void changeText(View view) {
        t1 = (TextView) findViewById(R.id.textView1);

        String output = "";

        ToggleButton tb1 = (ToggleButton) findViewById(R.id.toggleButton1);
        ToggleButton tb2 = (ToggleButton) findViewById(R.id.toggleButton2);

        if (tb1.isChecked()) {
            output += "1";
        }
        if (tb2.isChecked()) {
            output += "2";
        }

        t1.setText(output);

    }

}
