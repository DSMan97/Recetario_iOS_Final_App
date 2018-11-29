//
//  RecipesDetailVC.swift
//  Recetario
//
//  Created by GUILLERMO CRESPO AGUAYO on 29/11/18.
//  Copyright © 2018 GUILLERMO CRESPO AGUAYO. All rights reserved.
//

import UIKit

class RecipesDetailVC: UIViewController {
    @IBOutlet weak var recipeContent:UITextView!
    @IBOutlet weak var recipeImag: UIImageView!
    var recipes:Recipes!
    
    convenience init(_ recipes: Recipes){
        self.init()
        self.recipes = recipes
    }
    override func viewDidLoad() {
        self.title = recipes.recipeName
        recipeImag.sd_setImage(with: URL(string: recipes.recipeImg), placeholderImage: nil, completed: nil)
        recipeContent.text = recipes.recipeContent
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
