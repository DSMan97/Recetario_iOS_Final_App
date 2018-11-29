//
//  RecipeCells.swift
//  Recetario
//
//  Created by GUILLERMO CRESPO AGUAYO on 26/11/18.
//  Copyright © 2018 GUILLERMO CRESPO AGUAYO. All rights reserved.
//


import UIKit

class CategoriesCells: UITableViewCell{
    
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet var catImg:UIImageView!
    @IBOutlet var desc:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
