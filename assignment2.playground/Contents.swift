//: Playground - noun: a place where people can play

import UIKit

/*
 Description: To
 1.	Create a dictionary for products, in which each key is a product name (e.g., “Stawberry Icecream”) and each value is a tuple including the category and price of the corresponding product (e.g., (“Dissert”, 3.99))
 2.	Declare three functions:
 •	lowestPrice function returns name and price of the product that has the lowest price among all given products.
 •	highestPrice function returns name and price of the product that has the highest price among all given products.
 •	price function takes a product dictionary and a reference to a function as arguments. It returns the information (i.e., product name and price) of the product that has either the lowest price or the highest price.
 3.	call function price and pass a reference to lowestPrice, and make sure you get the correct returned value
 4.	call function price and pass a reference to highestPrice, and make sure you get the correct returned value
 
 Created on: Sept 29, 2017 10:33PM
 Author: Bina Maria   */


//Variable declaration and initialization
var productDict = ["apple": ("fruit",3.00), "orange": ("fruit",3.50), "mushroom": ("vegetable",5.00), "carrot": ("vegetable",2.00), "water melon": ("fruit",4.00)]

//The function returns name and price of the product that has the lowest price among all given products.
func lowestPrice(product : Dictionary<String,(String,Double)>) -> String
{
    
    var minProdPrice = 0.0, temp = 0.0;
    var minProdName = "";
    let productPrice = Array(product.values)
    var productName = Array(product.keys)
    
    // Loop through all products in the array productPrice
    for (i, v) in productPrice.enumerated()
    {
        let (_,prodPrice) = v
        
        //Temporary variable to store the price of the product in the current loop
        temp = prodPrice
        
        //Run this for the first item in the productPrice array
        if(i == 0)
        {
            //Assigning the variables to corresponding values of the first item in the array
            minProdPrice = prodPrice
            minProdName = productName[i]
            
        }
        
        //Comparing the price of previous loop with the current loop and assigning the variables minProdPrice, minProdName to the min values
        if(i != 0 && temp < minProdPrice)
        {
            minProdPrice = prodPrice
            minProdName = productName[i]
        }
        
    }
    
    return "The \(minProdName) has the lowest price value \(minProdPrice) among all given products!"
}


//The function returns name and price of the product that has the highest price among all given products.
func highestPrice(product : Dictionary<String,(String,Double)>) -> String
{
    
    var maxProdPrice = 0.0, temp = 0.0;
    var maxProdName = "";
    let productPrice = Array(product.values)
    var productName = Array(product.keys)
    
    // Loop through all products in the array productPrice
    for (i, v) in productPrice.enumerated()
    {
        let (_,prodPrice) = v
        
        //Temporary variable to store the price of the product in the current loop
        temp = prodPrice
        
        //Run this for the first item in the productPrice array
        if(i == 0)
        {
            //Assigning the variables to corresponding values of the first item in the array
            maxProdPrice = prodPrice
            maxProdName = productName[i]
            
        }
        
        //Comparing the price of previous loop with the current loop and assigning the variables maxProdPrice, maxProdName to the max values
        if(i != 0 && temp > maxProdPrice)
        {
            maxProdPrice = 	prodPrice
            maxProdName = productName[i]
        }
        
    }
    return "The \(maxProdName) has the highest price value \(maxProdPrice) among all given products!"
}

//The function with a product dictionary and a reference to a function as arguments.
func price(product : Dictionary<String,(String,Double)> , highestOrLowestProduct : (Dictionary<String,(String,Double)>) -> String) -> String
{
    //Returns the information (i.e., product name and price) of the product that has either the lowest price or the highest price.
    return highestOrLowestProduct(product)
}

print("Result when called the function - price and passed a reference to lowestPrice : \(price(product : productDict,highestOrLowestProduct : lowestPrice))")

print("Result when called the function - lowestPrice directly : \(lowestPrice(product : productDict))")

print("Result when called the function - price and passed a reference to highestPrice : \(price(product : productDict,highestOrLowestProduct : highestPrice))")

print("Result when called the function - highestPrice directly : \(highestPrice(product : productDict))")

