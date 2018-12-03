//
//  RecipeCells.swift
//  Recetario
//
//  Created by GUILLERMO CRESPO AGUAYO on 26/11/18.
//  Copyright © 2018 GUILLERMO CRESPO AGUAYO. All rights reserved.
//


import UIKit

class RecipesCells: UITableViewCell{
    
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet var recipeImg:UIImageView!
    @IBOutlet weak var recipedificultly: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
