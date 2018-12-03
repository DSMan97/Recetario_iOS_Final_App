//
//  Recipes.swift
//  About
//
//  Created by GUILLERMO CRESPO AGUAYO on 22/10/18.
//  Copyright © 2018 GUILLERMO CRESPO AGUAYO. All rights reserved.
//

import Foundation


class Recipes{
    var recipeName:String!
    var recipeContent:String!
    var recipeImg:String!
    var recipeIngredients:String!
    var recipeOriginLat:Double!
    var recipeOriginLong:Double!
    var recipeDifficult:String!
    var recipeDescription:String!
    var recipeDuration:String!

    
    init(name:String,recipe:String, img:String, ingredients:String, locationLat:Double, locationLong:Double, difficult:String, description:String, duration:String) {
       self.recipeName = name
        self.recipeContent = recipe
        self.recipeImg = img
        self.recipeIngredients = ingredients
        self.recipeOriginLat = locationLat
        self.recipeOriginLong = locationLong
        self.recipeDifficult = difficult
        self.recipeDescription = description
        self.recipeDuration = duration
    }
    
    
    
}
