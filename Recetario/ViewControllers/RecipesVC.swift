//
//  RecipesVC.swift
//  Recetario
//
//  Created by GUILLERMO CRESPO AGUAYO on 29/11/18.
//  Copyright © 2018 GUILLERMO CRESPO AGUAYO. All rights reserved.
//

import UIKit

class RecipesVC: UIViewController {

    @IBOutlet weak var tableViewAbout: UITableView!
    internal var recipes: Recipes!
    var arrecipes:[Recipes]=[]
    var arrecipesFilter:[Recipes]=[]
    
    convenience init(_ marrecipes:[Recipes]){
        self.init()
        self.arrecipes = marrecipes
    }
    
  
    
    internal var refreshControl = UIRefreshControl()
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title="Recipes"
     
        
        searchController.searchBar.backgroundColor = UIColor.white
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search..."
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        generateData()
        registerCell()
      
   
        // Do any additional setup after loading the view.
    }
    
    internal func searchBarIsEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    internal func isFiltering() -> Bool{
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    internal func searchFilter(_ searchText: String){
        arrecipesFilter =  arrecipes.filter({ (nRecipe: Recipes ) -> Bool in
            
            return (nRecipe.recipeName.lowercased().contains(searchText.lowercased()))
        })
        tableViewAbout.reloadData()
    }
    private func generateData(){
        
        
    }
    
    private func registerCell(){
        let identifier = "RecipesCells"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableViewAbout.register(cellNib, forCellReuseIdentifier: identifier)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @objc private func generalPressed(){
        dismiss(animated: true, completion: nil)
        
    }
}

extension RecipesVC: UITableViewDelegate, UITableViewDataSource {
   
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell = UITableViewCell()
        cell = createsection(indexPath)
        return cell
        }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isFiltering(){
            
            
            return arrecipesFilter.count
            
        }else{
            
            return arrecipes.count
        }
        
    }
    
    func tableView(_ tableView:UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destination = RecipesDetailVC(arrecipes[indexPath.row])
        navigationController?.pushViewController(destination, animated: true)
        
    }
    
    
   
    
    
    
    
    func createsection(_ indexPath: IndexPath) -> RecipesCells{
        let cell: RecipesCells = tableViewAbout.dequeueReusableCell(withIdentifier: "RecipesCells", for: indexPath) as! RecipesCells
        if isFiltering(){
            let myRecipe = arrecipesFilter[indexPath.row]
            cell.titleLabel.text = myRecipe.recipeName
            cell.recipeImg.sd_setImage(with: URL(string: myRecipe.recipeImg), placeholderImage: nil, completed: nil)
            
            //cell.accessoryType = .disclosureIndicator
        }else{
            let myRecipe = arrecipes[indexPath.row]
            cell.titleLabel.text = myRecipe.recipeName
            cell.recipeImg.sd_setImage(with: URL(string: myRecipe.recipeImg), placeholderImage: nil, completed: nil)
            //cell.accessoryType = .disclosureIndicator
            
        }
        return cell
    }
  
    


}

extension RecipesVC:UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController){
        searchFilter(searchController.searchBar.text!)
    }
}
