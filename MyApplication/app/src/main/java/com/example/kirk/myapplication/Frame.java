package com.example.kirk.myapplication;

/**
 * Created by Kirk on 1/16/2015.
 */


import android.widget.GridLayout;


public class Frame extends GridLayout {
    public static String title = "Tower Defense";
    public static

    public Frame() {
        setTitle(title);
        setSize(size);
        setResizable(false);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        init();
    }

    public void init() {
        setLayout(new GridLayout);

        Screen screen = new Screen();
        add(screen);
        setVisible(true);
    }


    public static void main(String args[]) {
        Frame frame = new Frame();
    }
}

