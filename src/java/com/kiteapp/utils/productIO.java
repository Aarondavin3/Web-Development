/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.utils;

import com.kiteapp.model.Kite;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

/**
 *
 * @author adavi
 */
public class productIO {
     public static Kite getProduct(int ID, String filepath) {
        try {
            File file = new File(filepath);
            BufferedReader in
                    = new BufferedReader(
                            new FileReader(file));

            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, ",");
                int kiteID = Integer.parseInt(t.nextToken());
                if (ID == kiteID) {
                    String name = t.nextToken();
                    String colour = t.nextToken();
                    String shape = t.nextToken();
                    String material = t.nextToken();
                    String level = t.nextToken();
                    float cost = Float.parseFloat(t.nextToken());
                   
                    Kite product = new Kite();
                    product.setKiteID(kiteID);
                    product.setColour(colour);
                    product.setShape(shape);
                    product.setMaterial(material);
                    product.setLevel(level);
                    product.setCost(cost);
                    
                    in.close();
                    return product;
                   
                }
                line = in.readLine();
            }
            in.close();
            return null;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }

    public static ArrayList<Kite> getProducts(String filepath) {
        ArrayList<Kite> products = new ArrayList<Kite>();
        File file = new File(filepath);
        try {
            BufferedReader in
                    = new BufferedReader(
                            new FileReader(file));

            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, ",");
                int kiteID = Integer.parseInt(t.nextToken());
                String name = t.nextToken();
                String colour = t.nextToken();
                String shape = t.nextToken();
                String material = t.nextToken();
                String level = t.nextToken();
                float cost = Float.parseFloat(t.nextToken());
                Kite product = new Kite();
               product.setKiteID(kiteID);
                    product.setColour(colour);
                    product.setShape(shape);
                    product.setMaterial(material);
                    product.setLevel(level);
                    product.setCost(cost);
                products.add(product);
                line = in.readLine();
            }
            in.close();
            return products;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }
}
