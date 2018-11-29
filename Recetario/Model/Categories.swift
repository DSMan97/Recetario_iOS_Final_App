//
//  Categories.swift
//  Recetario
//
//  Created by GUILLERMO CRESPO AGUAYO on 26/11/18.
//  Copyright © 2018 GUILLERMO CRESPO AGUAYO. All rights reserved.
//

import Foundation

class Categories{
    var categoryName:String!
     var categoryImage:String!
    var categoryDescription:String!
    
    var arrecipes: [Recipes]!
    
    
    
    init(name:String,image:String, desc:String, mrecipes:[Recipes] ) {
        self.categoryName = name
        self.categoryImage = image
        self.categoryDescription = desc
        self.arrecipes = mrecipes
    }
    
    
    
}


