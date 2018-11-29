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
        let catMeat = Categories(name: "Meat", image: "https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2018/03/16/15212064146858.jpg", desc: "The best recipes for meat", mrecipes: [Recipes(name: "Solomillo relleno de manzana", recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas", img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg")])
        let catFish = Categories(name: "Fish", image: "https://www.partesdel.com/wp-content/uploads/parte-del-pescado.png",desc: "The haters of fish", mrecipes:[Recipes(name: "Crema de calabaza con bacalao", recipe: "Limpia el interior de la calabaza, descarta las semillas y retira los filamentos. Córtala en trozos de tamaño medio." +
            
            "Cuece la calabaza en una olla tapada con el caldo junto con una cucharada de aceite de oliva durante 20 minutos. Cuando la cocción esté lista, tritura las calabazas con una batidora." +
            
            "Añade el bacalao previamente lavado y cortado en trozos. Cuécelo unos minutos, agrega el jugo de jengibre rallado, mezcla bien y sirve la crema caliente." +
            
            "Esta crema de calabaza es una receta muy fácil y sabrosa, pero si le quieres dar consistencia y cremosidad, añádele un poco de patata triturada cuando estés cociéndola. ¡Buenísima!", img: "https://www.gallinablanca.es/files/thumbs/2591f997d4b6dc505fa0ac9b2bc7bb572011de2b_r900_480_2.jpg")] )
        let catChiken = Categories(name: "Chicken", image: "https://s20421.pcdn.co/wp-content/uploads/2017/11/pollo-amarillo-295-1.jpg", desc: "The best KFC Recipes", mrecipes: [Recipes(name: "Receta de Solomillo relleno de manzana", recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas", img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg")])
        let catVegetables = Categories(name: "Vegetables", image: "https://www.vegetables.co.nz/assets/Uploads/vegetables.jpg", desc: "The best recipes for vegetables", mrecipes: [Recipes(name: "Receta de Solomillo relleno de manzana", recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas", img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg")])
        let catSalad = Categories(name: "Salad", image: "https://assets.bonappetit.com/photos/5ad51b07ff795274c43a0f58/16:9/w_1200,c_limit/20180403_Basically_122.jpg", desc: "The best salads", mrecipes: [Recipes(name: "Receta de Solomillo relleno de manzana", recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas", img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg")])
        let catPasta = Categories(name: "Pasta", image: "https://www.gallinablanca.es/files/thumbs/ef02623ee0bc71cfe62c1e82ee2f291948576d03_r900_480_2.jpg", desc: "For lovers of Italian Food", mrecipes: [Recipes(name: "Receta de Solomillo relleno de manzana", recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas", img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg")])
        let catSoup = Categories(name: "Soup", image: "https://www.gallinablanca.es/files/thumbs/4c803e7811a3fe7e274dce7ae907d113d088df68_r900_480_2.jpg", desc: "For the Spoon Lovers", mrecipes: [Recipes(name: "Receta de Solomillo relleno de manzana", recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas", img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg")])
        let catDessert = Categories(name: "Dessert", image: "https://sevilla.abc.es/gurme//wp-content/uploads/2015/07/mousse-de-queso-con-cerezas.jpg", desc: "The best desserts", mrecipes: [Recipes(name: "Receta de Solomillo relleno de manzana", recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas", img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg")])
        
        arrcategories.append(contentsOf: [catMeat,catFish,catChiken,catVegetables,catSalad,catPasta,catSoup,catDessert])
        
    }
    
    private func registerCell(){
        let identifier = "CategoriesCells"
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

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
       return arrcategories.count
    }
    
    func tableView(_ tableView:UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destination = RecipesVC(arrcategories[indexPath.row].arrecipes)
        navigationController?.pushViewController(destination, animated: true)    }
    
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell = UITableViewCell()
            cell = createsection(indexPath)
        
        return cell
    }
    
 
    
    
    func createsection(_ indexPath: IndexPath) -> CategoriesCells{
        let cell: CategoriesCells = tableViewAbout.dequeueReusableCell(withIdentifier: "CategoriesCells", for: indexPath) as! CategoriesCells
        let myRecipe = arrcategories[indexPath.row]
            cell.titleLabel.text = myRecipe.categoryName
            cell.catImg.sd_setImage(with: URL(string: myRecipe.categoryImage), placeholderImage: nil, completed: nil)
        cell.desc.text = myRecipe.categoryDescription
        
        
        return cell
    }
   
}
