//
//  CategoriesVC.swift
//  Recetario
//
//  Created by GUILLERMO CRESPO AGUAYO on 26/11/18.
//  Copyright © 2018 GUILLERMO CRESPO AGUAYO. All rights reserved.
//

import UIKit
import SDWebImage
class CategoriesVC: UIViewController {

    @IBOutlet weak var tableViewAbout: UITableView!
    internal var recipes: Recipes!
    var arrcategories:[Categories]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title="Categories"
        generateData()
        registerCell()
        setBarButtonItems()
        // Do any additional setup after loading the view.
    }
    

    private func generateData(){
        let catMeat = Categories(name: "Meat", image: "https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2018/03/16/15212064146858.jpg")
         let catFish = Categories(name: "Fish", image: "http://www.dagustin.com/wp-content/uploads/2015/09/b2ap3_thumbnail_salmon.jpg")
          let catChiken = Categories(name: "Chicken", image: "https://s20421.pcdn.co/wp-content/uploads/2017/11/pollo-amarillo-295-1.jpg")
         let catVegetables = Categories(name: "Vegetables", image: "https://www.vegetables.co.nz/assets/Uploads/vegetables.jpg")
         let catSalad = Categories(name: "Salad", image: "https://assets.bonappetit.com/photos/5ad51b07ff795274c43a0f58/16:9/w_1200,c_limit/20180403_Basically_122.jpg")
         let catPasta = Categories(name: "Pasta", image: "https://www.gallinablanca.es/files/thumbs/ef02623ee0bc71cfe62c1e82ee2f291948576d03_r900_480_2.jpg")
        let catSoup = Categories(name: "Soup", image: "https://www.gallinablanca.es/files/thumbs/4c803e7811a3fe7e274dce7ae907d113d088df68_r900_480_2.jpg")
        let catDessert = Categories(name: "Dessert", image: "https://sevilla.abc.es/gurme//wp-content/uploads/2015/07/mousse-de-queso-con-cerezas.jpg")
        
        arrcategories.append(contentsOf: [catMeat,catFish,catChiken,catVegetables,catSalad,catPasta,catSoup,catDessert])
        
    }
    
    private func registerCell(){
        let identifier = "TitleCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableViewAbout.register(cellNib, forCellReuseIdentifier: identifier)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func setBarButtonItems(){
        let GeneralBarButton =
            UIBarButtonItem(title: "General", style: .plain , target: self, action: #selector(generalPressed))
        
        navigationItem.setLeftBarButton(GeneralBarButton, animated: false)
    }
    @objc private func generalPressed(){
        dismiss(animated: true, completion: nil)
        
    }
}

extension CategoriesVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return arrcategories.count
    }
    
    func tableView(_ tableView:UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
    }
    
    
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell = UITableViewCell()
            cell = createsection(indexPath)
        
        return cell
    }
    
 
    
    
    func createsection(_ indexPath: IndexPath) -> RecipeCells{
        let cell: RecipeCells = tableViewAbout.dequeueReusableCell(withIdentifier: "TitleCell", for: indexPath) as! RecipeCells
        let myRecipe = arrcategories[indexPath.row]
            cell.titleLabel.text = myRecipe.categoryName
            cell.imageView?.sd_setImage(with: URL(string: myRecipe.categoryImage), placeholderImage: nil, completed: nil)
        return cell
    }
   
}
