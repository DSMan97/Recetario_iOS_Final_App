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
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var recipeIngredients: UITextView!
    @IBOutlet weak var recipeSteps: UITextView!
    @IBOutlet weak var recipeDuration: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblIngridients: UILabel!
    @IBOutlet weak var lblSteps: UILabel!
    @IBOutlet weak var lblDuration: UILabel!
    
    
    convenience init(_ recipes: Recipes){
        self.init()
        self.recipes = recipes
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = recipes.recipeName
        recipeImag.sd_setImage(with: URL(string: recipes.recipeImg), placeholderImage: nil, completed: nil)
        recipeSteps.text = recipes.recipeContent
        recipeContent.text = recipes.recipeDescription
        recipeIngredients.text = recipes.recipeIngredients
        recipeDuration.text = recipes.recipeDuration
        lblDescription.text = "Description"
        lblSteps.text = "Steps"
        lblDuration.text = "Duration"
        lblIngridients.text = "Ingridients"
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func gotoMap(_ sender: Any) {
        let destination = MapVC(lat: recipes.recipeOriginLat, lng: recipes.recipeOriginLong)
        navigationController?.pushViewController(destination, animated: true)
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
