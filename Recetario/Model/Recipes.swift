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
    

    
    init(name:String,recipe:String, img:String) {
       self.recipeName = name
        self.recipeContent = recipe
        self.recipeImg = img
    }
    
    
    
}
