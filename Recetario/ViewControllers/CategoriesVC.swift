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
        // Do any additional setup after loading the view.
    }
    

    private func generateData(){
        let catMeat = Categories(name: "Meat",
                                 image: "https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2018/03/16/15212064146858.jpg",
                                 desc: "The best recipes for meat",
                                 mrecipes: [Recipes(
                                    name: "Solomillo relleno de manzana",
                                    recipe: "1 Primero que todo pedir al carnicero que nos abra el solomillo como un libro.\n2 Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas\n.3 Rellenar el solomillo de cerdo con las manzanas y ciruelas.4 Coser el solomillo de cerdo relleno o atarlo con hilo de cocina, para que no se salga el relleno.\n5 En una cazuela ancha poner el solomillo de cerdo relleno de manzana y ciruelas con una pizca de sal y pimienta, y sellarlo bien por todos los lados. Una vez sellado, lo sacamos de la cazuela y reservamos. En la misma cazuela ponemos a pochar la cebolla, le añadimos la harina y damos unas vueltas, y enseguida le ponemos el vino y a continuación añadimos las pasas y los solomillos, el agua y la pastilla de caldo, y que hierva a fuego medio durante unos 30 minutos.6 Si queremos añadir castañas hervidas, se añaden en los últimos 5 minutos de cocción.\n 7 Cuando esté hecho, lo sacamos a una fuente y le quitamos el hilo de cocina y lo cortamos con un buen cuchillo en cortadas más bien gruesas y lo bañamos con la salsa que lleva las pasas y las castañas. ¡Y a disfrutar del solomillo relleno con manzana y ciruelas!",
                                    img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg",
                                    ingredients: "1 Solomillo Grande\n1 Manzana\n6 o 7 Ciruelas\nSal\nHarina 250g\nPimienta\n",
                                    locationLat: 40.4167047,
                                    locationLong: -3.7035825,
                                    difficult: "Medium",
                                    description: "Si quieres triunfar en la mesa de Navidad con tus invitados no puede faltar este maravilloso solomillo relleno con manzana y ciruelas en salsa de pasas y castañas que, aunque necesita tu tiempo de elaboración, no es tan difícil de hacer como parece y el resultado es espectacular. Sigue leyendo el paso a paso que compartimos en RecetasGratis y comprueba su increíble sabor.\n",
                                    duration: "1H:30min" ),Recipes(
                                        name: "Albóndigas italianas",
                                        recipe: "1 Con la carne picada mezclar los piñones, las pasas, los huevos, el pan rallado, la sal y la nuez moscada, y el queso\n2 Cortar la cebolla en trozos pequeños\n 3 Rehogar la cebolla en el aceite de oliva.\n4 Cuando ya esté la cebolla dorada incorporamos las dos clases de tomates, añadimos un poco de sal, y dejamos cocer a fuego medio unos 10 minutos.\n5 Hacer pelotas con la masa de las albóndigas de carne italianas y enharinar (el tamaño de las pelotas es al gusto, yo las hago grandotas).\n6 Freír las auténticas albóndigas italianas en aceite de girasol caliente, dorar y retirar(no freír mucho).\n7 Solo que estén doradas, poner las albóndigas a la italiana en papel para que absorban el exceso de aceite.\n8 Introducirlas en la cazuela con la salsa de tomate italiana y cocer a fuego medio unos 15 minutos.\n9 Servir las albóndigas italianas en salsa recién hechas. Acompáñalas con unos espaguetis a la mantequilla o un poco de arroz blanco suelto por ejemplo.\n",
                                        img: "https://t1.rg.ltmcdn.com/es/images/3/0/5/albondigas_italianas_65503_600.jpg",
                                        ingredients: "500 gramos de carne ternera picada\n 150 gramos de pan rallado\n2 huevos\n30 gramos de piñones\n30 gramos de pasas\n250 gramos de cebolla\n40 gramos de aceite de oliva\n250 gramos de tomate triturado\n1 pizca de nuez moscada\nSal al gusto",
                                        locationLat: 42.6384261,
                                        locationLong: 12.674297,
                                        difficult:"Easy",
                                        description: "Si quieres aprender esta receta de albóndigas italianas en salsa de tomate échale un vistazo al paso a paso que Chispa ha compartido desde la app de RecetasGratis y conseguirás unas auténticas albóndigas italianas para chuparse los dedos. Verás so tiernas, jugosas y sabrosas que están junto con la salsa de tomate que vamos a preparar.",
                                        duration: "45min"),Recipes(
                                            name: "Seitán encebollado agridulce",
                                            recipe: "1 Corta el seitán en bastones grandes o en filetes finos. Calienta una sartén con aceite y dora el seitán por todos los lados. Una vez dorado, retíralo de la sartén y reserva para seguir con la receta de seitán encebollado agridulce.\n2 Corta la cebolla en juliana y póchala en la misma sartén agregando un poco más de aceite previamente.\n 3 En un bol mezcla la salsa de soja, el vinagre de arroz, el sirope de agave y un pequeño trozo de jengibre fresco rallado. Esta preparación dará el toque agridulce al seitán encebollado.\n4 Cuando la cebolla empiece a ponerse transparente añade el seitán y la vinagreta que has preparado. Deja cocinar durante 3-4 minutos removiendo de vez en cuando.\n5 Vierte el caldo vegetal en la sartén, llévalo a ebullición, baja un poco el fuego y cocina hasta que se evapore el caldo. Sírve la receta de seitán encebollado agridulce con la guarnición que más te guste. ¡Y no olvides visitar mi blog Vegspiration!.\n",
                                            img: "https://t2.rg.ltmcdn.com/es/images/6/0/6/seitan_encebollado_agridulce_70606_paso_4_600.jpg",
                                            ingredients: "300 gramos de seitán\n 4 cucharadas soperas de salsa de soja\n2 cebollas\n2 cucharadas soperas de sirope de agave\n1 trozo de jengibre\n2 cucharadas soperas de vinagre de arroz\n",
                                            locationLat: 35.000074,
                                            locationLong: 104.999927,
                                            difficult:"Easy",
                                            description: "Esta receta de seitán encebollado es perfecta para las personas que se están iniciando en el veganismo o vegetarianismo y quieren aprender a cocinar los sustitutos vegetales de la carne de forma rápida y sencilla.\nEl seitán es un producto elaborado a base de gluten de trigo, es muy rico en proteínas de origen vegetal y se utiliza para sustituir la carne en muchas recetas. Vamos a cocinarlo encebollado con un toque agridulce de salsa de soja, vinagre, sirope de agave y jengibre. Puedes servir el seitán encebollado con verduras, arroz, puré de patatas, etc. En cualquier caso, quédate en RecetasGratis y aprende cómo hacer seitán encebollado agridulce.",
                                            duration: "30min"),Recipes(
                                                name: "Solomillo de cerdo al coñac",
                                                recipe: "1 Primero hacemos el arroz. En una cacerola se pone una cucharada de aceite y el arroz, se mueve, se echan 2 vasos de agua y se deja cocer 15 minutos.\n2 El solomillo se limpia y se corta en trozos, después se salpimienta.\n 3 Luego, en una sartén con poco aceite ponemos los trozos de solomillo y los cocinamos vuelta y vuelta. Cuando estén dorados ponemos un poco de mantequilla y el vaso de coñac para hacer, así, el solomillo de cerdo al coñac.\n4 Se cocina como dos minutos, hasta que deje de oler a coñac, se tapa otros dos minutos y listo. Se sirve el solomillo de cerdo con salsa de coñac acompañado del arroz hervido.",
                                                img: "https://t1.rg.ltmcdn.com/es/images/6/3/0/solomillo_de_cerdo_al_conac_70036_600.jpg",
                                                ingredients: " 1 Solomillo de Cerdo\n 1 Vaso de coñac\n 1 vaso de arroz",
                                                locationLat: 42.6384261,
                                                locationLong: 12.674297,
                                                difficult:"Easy",
                                                description: "Un plato sencillo pero sabroso, así es la receta de solomillo de cerdo al coñac. Sin duda, una forma diferente de cocinar esta carne tan jugosa, potenciando su sabor y haciendo que se deshaga en la boca. Quédate en RecetasGratis y aprende cómo hacer solomillo de cerdo en salsa de coñac paso a paso.",
                                                duration: "45min")])
        let catFish = Categories(name: "Fish", image: "https://www.partesdel.com/wp-content/uploads/parte-del-pescado.png",desc: "The haters of fish", mrecipes:[Recipes(
            name: "Salmón al cuadrado",
            recipe: "1 Pela las patatas, córtalas en medias lunas finas y ponlas a pochar en una sartén con abundante aceite. Pica la cebolleta y el pimiento en dados y añádelos. Sazona y fríe todo bien hasta que las patatas se doren un poco. Escurre el aceite y pasa las patatas por el pasapurés. Reserva el puré.\n2 Pon el queso en un bol. Pica finamente las aceitunas y el tomate deshidratado.Agrégalos al bol y mezcla bien. Unta cada loncha de salmón con la mezcla anterior y enróllalas formando 4 cilindros.\n 3 Corta un trocito de manera que ese lado nos sirva de base.\n 4 Ponlos de pie y ábrelos un poco de manera que os queden 4 capullos de rosa.\n5 Con ayuda de unas pinzas retira las espinas centrales del lomo de salmón.\n 6 Córtalo en 4 trozos, salpimienta y cocínalos a la plancha durante 3 minutos por cada lado.\n7 Sirve en cada plato una porción de salmón, una flor y 2 “quenelles” de puré de patata.\n 8 Decora los platos con unas hojas de perejil.",
            img: "https://www.hogarmania.com/archivos/201810/salmon-cuadrado-vertical-XxXx80.jpg",
            ingredients: "600 g de salmón fresco (lomo limpio)\n100 g de salmón ahumado (en lonchas)\n3 patatas\n1 cebolleta\n1 pimiento verde\n100 g de queso de untar\n3 aceitunas verdes\n1 tomate deshidratado en aceite\naceite de oliva virgen extra\nsal\npimienta\nperejil\n",
            locationLat: 42.6384261,
            locationLong: 12.674297,
            difficult: "Hard",
            description: "Alimento a destacar en el plato de hoy: SALMÓN, pescado azul rico en omega 3, ácidos grasos beneficiosos para prevenir las enfermedades del corazón, diabetes, cáncer, etc.La mayor parte de salmón que se consume en España procede de piscifactorías. Es un salmón alimentado con harinas de pescados, menos graso que el salmón salvaje.Debemos comer 4 días a la semana pescado para prevenir la obesidad y las enfermedades cardiovasculares de manera que colocaremos el salmón en la zona naranja de la pirámide",
            duration: "1H"),Recipes(
                name: "Gambas al ajillo. Receta de Navidad",
                recipe: "Si las gambas son frescas les sacamos la cabeza y cola, dejando la cáscara del cuerpo, aunque esto va en gustos. Si son peladas este paso lo obviáis. Ponemos las gambas en un cuenco y las cubrimos con agua, echamos un buen chorro de vino blanco y las dejamos reposar durante dos horas\n.En una cazuela de barro preferentemente, ponemos un poco de aceite de oliva con la guindilla, calentamos y doramos los dientes de ajo laminados. Echamos las gambas escurridas, subimos el fuego y agregamos un poco del caldo donde han estado a remojo. Si fuese necesario añadiríamos más caldo, totalmente a nuestra elección. Salamos al gusto y servimos inmediatamente en cuanto estén en su punto de cocción\n.",
                img: "https://i.blogs.es/b0eada/receta-de-gambas-al-ajillo/1366_2000.jpg",
                ingredients: "Gambas cocidas...400 g\nDientes de ajo...4\nGuindilla de Cayena 1\nVino blanco\nAceite de oliva virgen extra\nSal",
                locationLat: 40.4167047, locationLong: -3.7035825,
                difficult: "Easy",
                description: "La receta de gambas al ajillo es un clásico de nuestro recetario y por supuesto muy presente en Navidad, siempre y cuando el bolsillo nos permitan este tipo de lujos. En este caso para la receta he utilizado gambas congeladas, que bien preparadas, tampoco tienen por qué envidiarle nada a cualquier otra.\nEs cierto que no es lo mismo, pero desde luego si nos queremos dar en un momento dado un capricho, podemos buscar en el mercado diferentes opciones y preparar unas ricas gambas de esta forma que es tan sencilla y rápida. Si os gustan muy picantes sólo tenéis que añadir en vez de una guindilla, dos.",
                duration: "2h:15min"),Recipes(
                    name: "Angulas a la Bilbaína",
                    recipe: "1 Se ponen las cazuelas en una plancha muy caliente. Se añaden 3 cucharadas de aceite en cada cazuela.\n 2 Cuando esté caliente se le añaden el ajo y la guindilla. Se deja que se dore el ajo y se echan las angulas.\n 3 Se saltean un poco y se sirven.\n",
                    img: "https://www.hogarmania.com/archivos/201401/angulas-bilbaina-xl-668x400x80xX.jpg",
                    ingredients: "Angulas...375 g\n21 laminas de ajo\nGuindilla de Cayena 3\nAceite de oliva virgen extra\n",
                    locationLat: 42.61946, locationLong: -7.863112,
                    difficult: "Easy",
                    description: "La receta de gambas al ajillo es un clásico de nuestro recetario y por supuesto muy presente en Navidad, siempre y cuando el bolsillo nos permitan este tipo de lujos. En este caso para la receta he utilizado gambas congeladas, que bien preparadas, tampoco tienen por qué envidiarle nada a cualquier otra.\nEs cierto que no es lo mismo, pero desde luego si nos queremos dar en un momento dado un capricho, podemos buscar en el mercado diferentes opciones y preparar unas ricas gambas de esta forma que es tan sencilla y rápida. Si os gustan muy picantes sólo tenéis que añadir en vez de una guindilla, dos.",
                    duration: "20min"),Recipes(
                        name: "Empanadillas de gambas",
                        recipe: "1 Pela y pica el diente de ajo y la cebolleta en daditos. Ponlos a rehogar en una sartén con un chorrito de aceite.\n2 Pela las gambas, pica y agrégalas. Salpimienta y añade un poco de perejil picado.\n3 Agrega la harina y rehógala un poco. Vierte la leche poco a poco y cocina la bechamel durante unos 6-8 minutos. Pasa la masa a una fuente y deja que se enfríe.\n 4 Extiende las obleas y rellénalas con pequeñas porciones de masa. Dobla y ciérralas presionando los bordes con un tenedor. Fríelas en una sartén con aceite y escúrrelas sobre papel absorbente.\n5 Lava las hojas de lechuga, seca y repártelas en una fuente. Lava los tomates, córtalos por la mitad y agrégalos.\n 6 Aliña con aceite, vinagre y sal y sirve al lado de las empanadillas.\n.",
                        img: "https://www.hogarmania.com/archivos/201811/empanadillas-gambas-vertical-XxXx80.jpg",
                        ingredients: "24 Gambas\nDientes de ajo...1\n16 obleas de empanadilla\nPimienta\nAceite de oliva virgen extra\nSal",
                        locationLat: 42.9911816, locationLong: -2.5543023,
                        difficult: "Easy",
                        description: "Pocas verduras y hortalizas en el plato de hoy: 39,3%.Las obleas las incluimos dentro de los cereales, como alimentos energéticos, sobrepasando las recomendaciones nutricionales para que el plato sea equilibrado: 36,3%.Las gambas están en el porcentaje recomendado: 24,5%.",
                        duration: "20min")] )
        let catChiken = Categories(name: "Chicken", image: "https://s20421.pcdn.co/wp-content/uploads/2017/11/pollo-amarillo-295-1.jpg", desc: "The best KFC Recipes", mrecipes: [Recipes(
            name: "Pollo al Curry con Nata",
            recipe: "1.- ponemos a calentar en una sartén, un chorrito de aceite a fuego medio. Cuando esté caliente, añadimos la cebolla y el ajo picado. Salpimentamos y dejamos cocinar, mientras lo removemos de vez en cuando, unos 5 minutos\n2.- Pasado el tiempo, añadimos el tomate y el curry. Puedes añadir también una guindilla de cayena o chile (si quieres que pique). Removemos y dejamos cocinar un par de minutos más\n3.- Es el turno de añadir el pollo. Subimos un poco la fuerza del fuego y lo añadimos cortado en trozos del tamaño de un bocado. Salpimentamos y sellamos brevemente el pollo, mientras lo mezclamos con el resto de ingredientes\n4.- cuando el pollo esté sellado por fuera, añadimos la nata y removemos bien. Veremos que la nata se va tornando amarilla. Dejamos reducir 5 minutos más, a fuego suave y ¡listo para servir! Puedes espolvorear con un poco de perejil picado, para darle color\n",
            img: "https://www.divinacocina.es/wp-content/uploads/pollo-al-curry-cazuela-arroz.jpg",
            ingredients: "4 pechugas de pollo\n2 cebollas medianas\n4 dientes de ajo\n5 cucharadas de tomate frito (salsa de tomate)\n2 cucharadas de curry\n400ml de nata para cocinar\nPerejil para espolvorear por encima\n",
            locationLat: 22.3511148, locationLong:  78.6677428,
            difficult: "Easy",
            description: "El pollo al curry es una receta típica del sudeste asiático. Consiste en este ave hecha con las especias del curry (Cúrcuma, pimienta, cilantro, macis, jengibre, cardamomo, clavo, canela, cayena y anís) y con nata. El curry, puedes hacerlo tú o puedes comprarlo ya hecho. Como guarnición, le viene “al pelo” un buen arroz blanco. Como resultado, tendremos una completísima comida con mucha personalidad. Tanto por su color como sabor. Además, en hacer esta receta no se tarda más de 15 minutos. Los ingredientes para hacer el pollo al curry son",
            duration: "20min"),Recipes(
                name: "Pollo frito estilo KFC",
                recipe: "1.- Lo Primero para hacer el pollo frito estilo KFC es prepapar una tempura. Para ello, ponemos en un recipiente bastante ancho 300g de la harina y una cucharada de cada una de las especias que hayamos elegido. Añadimos también un buen pellizco de sal. Quizás te parezca que sean demasiadas especias pero, aquí está el secreto de la receta. Además, a la hora de comer, dan ese gusto que deseamos pero, no llegan a notarse tanto en boca. Añadimos también la leche, entre 350 y 400 ml. La cantidad exacta va a depender bastante de la marca de harina empleada. La idea es mezclarlo todo con una varilla y que quede una masa más bien licuada pero, con bastante cuerpo. Cuando estén todos los ingredientes bien mezclados, pasamos la varilla sobre la tempura y, si se pega a ella pero enseguida cae, está será la textura exacta que deseamos.\n2.- Ahora metemos el pollo salpimentado dentro de la tempura. Lo cubrimos bien de la misma y lo tapamos. Lo dejamos macerar mínimo una hora en el frigorífico. Si es más tiempo, mejor.\n3.- Pasado el tiempo, preparamos el rebozado exterior que llevará el pollo. En un plato ponemos los 100g de harina que teníamos reservada y le añadimos media cucharadita de las mismas especias que le habíamos puesto anteriormente a la tempura. Removemos bien todo para que se mezclen todas las especias con la harina.\n4.-Sacamos el pollo del frigorífico y, sin quitarle demasiado exceso de la masa de la tempura, lo pasamos por la harina. Que se impregne bien de ella. Después lo metemos en abundante aceite de oliva, a fuego fuerte pero, no demasiado o quedarán crudos por el centro (yo lo hago a una potencia de 7, de 9 de máximo que tiene mi vitrocerámica) y lo freimos. Estarán listos en unos 10 minutos.",
                img: "https://www.cocinacaserayfacil.net/wp-content/uploads/2017/03/pollo-frito-estilo-kentucky-fried-chicken.jpg",
                ingredients: "8 muslos de pollo\n500ml de leche\n 300g de harina\n1 cucharada de especias al gusto: orégano, pimentón, curry, cebolla en polvo, ajo en polvo\n1/2 cucharadita de las especias anteriores más 100g de harina\nSal y pimienta\nAceite de oliva\nsal y pimienta\n",
                locationLat: 42.6384261,
                locationLong: 12.674297,
                difficult: "Easy",
                description: "¿Has estado alguna vez en este restaurante de comida rápida? ¿Has probado alguna vez su plato estrella, el pollo frito estilo Kentucky Fried Chicken? Vamos a emular un receta de cocina muy similar a la de este establecimiento, pero hecha en casa que, como siempre digo, será más sana y más satisfactoria. Sabremos los ingredientes que lleva y además, tendremos la satisfacción interior de que lo hemos hecho nosotros mismos. ¿Lo mejor de todo? Es una receta que es muy facil de hacer. Así que todo son ventajas. Prepara este pollo frito estilo KFC y verás como tu plato triunfa entre niños y mayores.",
                duration: "1H"),Recipes(
                    
                    name: "Pollo al horno con patatas",
                    recipe: "1.- Pelamos las patatas y las cortamos en rodajas finas. De no más de 1 centímetro de grosor. Después, las ponemos de base en una bandeja para horno\n2.- PPelamos las cebollas y las cortamos en juliana. Es decir, en tiras finas. Las colocamos encima de la patata. Salpimentamos toda la verdura\n3.- EPonemos el pollo encima de la verdura. Le añadimos a todo un vaso de agua y un chorrete de aceite de oliva. Así no queda seco mientras se hornea. Salpimentamos el pollo y añadimos un buen pellizco de tomillo seco a cada muslo del pollo (o al pollo completo, si has elegido la pieza completa)\n4.- Metemos todo al horno. A 220ºC de temperatura. calor arriba y abajo. Durante unos 30 minutos, hasta que se dore bien.\n5.-Cuando esté bien doradito, sacamos la bandeja del horno, Le damos la vuelta a los muslos, o al pollo entero. Para que se cocine el otro lado.\nLo volvemos a meter y lo dejamos el mismo tiempo que antes de sacarlo.",
                    img: "https://www.cocinacaserayfacil.net/wp-content/uploads/2015/07/Pollo-al-horno-con-patatas-y-cebolla.jpg",
                    ingredients: "1 pollo entero o 4 muslos completos (cuartos traseros) de pollo\n4 patatas medianas\n4 dientes de ajo\n4 cebollas medianas\naceite de oliva\nsal y pimienta\nTomillo seco\n",
                    locationLat: 42.6384261,
                    locationLong: 12.674297,
                    difficult: "Easy",
                    description: "El pollo al horno con patatas y cebolla, es una receta que no conlleva mucho esfuerzo hacer. Y es por tanto fácil y rápida. Además, el resultado final será excelente, ya que la guarnición de patatas y cebolla, mezclada con los jugos y sabores que suelta el pollo, queda brutal. El vitoriano Gorka Barredo nos muestra cómo prepara en casa su famoso pollo asado al horno, acompañado con una deliciosa guarnición y éstos, son los ingredientes para su elaboración.",
                    duration: "20min"),Recipes(
                        
                        name: "Pollo rebozado con maiz",
                        recipe: "1.- Se cortan los filetes de pechuga en tiras y se salpimientan. Se reservan.\n2.- Mientras maceran un poco los filetes con la sal y la pimienta, se baten los huevos en un bol y se les añade el ajo y perejil picados. Se mezcla bien.\n3.- Se tritura el maíz con la batidora eléctrica. No hace falta que se quede como harina, ya que es interesante encontrarse con trozos más grandes que otros.\n4.- En otro bol, se mezcla el pan rallado junto con el maíz frito triturado.\n5.-Se pasan los filetes de pollo por los huevos batidos, y luego, por la mezcla de pan rallado con maíz frito triturado.\n6.-Se fríen los filetes de pollo rebozados en una sartén con abundante aceite caliente hasta que se doren.Cuando estén hechos, se retiran del aceite y se ponen sobre papel de cocina para que absorban el exceso de aceite.\n",
                        img: "https://i.ytimg.com/vi/xLR9yqIyGRE/maxresdefault.jpg",
                        ingredients: "1 kg de filetes de pechuga de pollo\n200 g de maiz frito triturado\n100 de pan rallado\n1 diente de ajo\n1 cucharadita de perejil picado seco\n1 pizca de pimienta\nsal a gusto\n3 Huevos\n",
                        locationLat: 22.3511148, locationLong:  78.6677428,
                        difficult: "Easy",
                        description: "Si estas cansada del rebozado clásico para los filetes, te aconsejo que hagas este con maíz frito. Queda de una textura diferente, mucho más crujiente que el tradicional. El pollo rebozado con maíz frito es uno de esos platos que no podrás dejar de preparar, porque es fácil y delicioso. Acompañado con unas patatas fritas o con una ensalada se convertirá en tu cena preferida.",
                        duration: "20min")])
        let catVegetables = Categories(name: "Vegetables", image: "https://www.vegetables.co.nz/assets/Uploads/vegetables.jpg", desc: "The best recipes for vegetables", mrecipes: [Recipes(
            name: "Receta de Solomillo relleno de manzana",
            recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas",
            img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg",
            ingredients: "",
            locationLat: 0.0,
            locationLong: 0.0,
            difficult: "Medium",
            description: "",
            duration: "1H:20min")])
        let catSalad = Categories(name: "Salad", image: "https://assets.bonappetit.com/photos/5ad51b07ff795274c43a0f58/16:9/w_1200,c_limit/20180403_Basically_122.jpg", desc: "The best salads", mrecipes: [Recipes(
            name: "Receta de Solomillo relleno de manzana",
            recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas",
            img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg",
            ingredients: "",
            locationLat: 0.0,
            locationLong: 0.0,
            difficult: "Medium",
            description: "",
            duration: "1H:20min")])
        let catPasta = Categories(name: "Pasta", image: "https://www.gallinablanca.es/files/thumbs/ef02623ee0bc71cfe62c1e82ee2f291948576d03_r900_480_2.jpg", desc: "For lovers of Italian Food", mrecipes: [Recipes(
            name: "Receta de Solomillo relleno de manzana",
            recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas",
            img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg",
            ingredients: "",
            locationLat: 0.0,
            locationLong: 0.0,
            difficult: "Easy",
            description: "",
            duration: "1H:20min")])
        let catSoup = Categories(
            name: "Soup",
            image: "https://www.gallinablanca.es/files/thumbs/4c803e7811a3fe7e274dce7ae907d113d088df68_r900_480_2.jpg",
            desc: "For the Spoon Lovers",
            mrecipes: [Recipes(
            name: "Cocido Madrileño",
            recipe: "La noche anterior pondremos a remojo unos buenos garbanzos castellanos en la víspera del cocido. Truco: Además le pondremos un puñado de sal gorda para que al día siguiente no se encallen en la cocción. Empezaremos por poner a cocer, partiendo de agua fría, las carnes, la punta de jamón y los huesos indicados. Clave: Durante todo el cocido, de principio a fin, retiraremos la espuma que se vaya formando con una espumadera. Asimismo iremos incorporando agua según se vaya evaporando para que nuestro cocido no se quede seco\n.El fuego del cocido lo tendremos de una forma continua a media potencia. Cuando el agua empiece a hervir, añadimos los garbanzos, previamente escurridos y lavados. Desde que el agua vuelva a hervir, tardarán en estar tiernos entre dos y tres horas, hecho a fuego lento o bien unos 20 minutos en caso de hacerlo en olla rápida. Recomendación: meted los garbanzos en una malla para poder sacarlos con facilidad al finalizar la cocción y así poder servir el cocido en los tres vuelcos tradicionales\n.En un puchero aparte, ponemos a cocer el repollo, y en otra cacerola, cocemos chorizos y morcillas, para que no llenen de grasa nuestro caldo. Cuando el cocido esté prácticamente hecho, incorporamos las patatas y las zanahorias peladas en el puchero del cocido madrileño\n.Al finalizar el proceso, sacamos las carnes y las servimos en una fuente a la que incorporamos chorizos y morcillas. Rehogamos el repollo y lo ponemos en una fuente con los garbanzos, las patatas y las zanahorias. Para hacer la sopa, colamos el caldo y añadimos los fideos cuando el caldo empiece a hervir, siendo necesarios dos o tres minutos para los fideos finos tipo cabellín.",
            img: "https://i.blogs.es/bc2fdf/cocido-madrileno-pakus/1366_2000.jpg",
            ingredients: "Garbanzos...300g\nMorcilla...400g\nTocino...200g\nChorizo fresco...3 units\nFideos...150g\nPollo...150g\nPatatas...3 units",
            locationLat: 40.4167047,
            locationLong: -3.7035825,
            difficult: "Hard",
            description: "La receta de cocido madrileño es una de las recetas que más me gusta cocinar, porque siempre gusta mucho cuando lo hago en casa y por lo tradicional de este plato\n. Podemos hacer el cocido madrileño a fuego lento en una cazuela o marmita grande, en cuyo caso emplearemos unas dos horas y media a fuego lento o utilizar la olla exprés con lo que tendremos el cocido madrileño listo en unos 20 minutos aproximadamente\n.Como en casi todas las recetas tradicionales, en cada casa hay una forma de elaborar el cocido madrileño. Los puristas le pondrán gallina en lugar de pollo este ultimo más jugoso y tierno, pero con menos sabor-, unos usarán tocino, otros panceta o papada y habrá quienes usen la pelota o bola de relleno elaborada con huevo y carne picada, que yo por ejemplo no suelo incluir\n. Con todo esto quiero que probéis mi receta, -ya veréis qué rico queda el cocido así preparado- y por supuesto, en caso de duda, adaptad la receta a vuestros gustos.",duration: "1H:20min"
                ),Recipes(
                    name: "Sopa Castellana",
                    recipe: "1.-Pelamos y fileteamos los ajos, no es necesario que sean muy finos. El ajo debe dar olor y también proporcionar la emulsión entre el agua y el aceite para que la sopa sea excelente. Reservamos en un cuenco.\n2.-Elegimos una cazuela grande, calentamos el aceite en el fondo e introducimos el ajo. Salteamos hasta que comiencen a coger un color dorado (pero cuidado que no se arrebaten).\n3.-Añadimos también el jamón cortado en trozos pequeños. Removemos con una cuchara de madera de manera envolvente hasta juntar bien los sabores.\n4.- Cuando los ajos tengan un color miel tostado añadimos 6 rebanadas de pan duro y les damos unas vueltas. Retiramos la cazuela del fuego y espolvoreamos con el pimentón dulce.\n5.-A mí me gusta así aunque mucha gente lo hace con pimentón picante.\n6.-El pimentón cumple una doble función: colorea de rojo el pan y además proporciona aroma. Para ello con la cazuela fuera del fuego para evitar que el pimentón se queme. Y que todo quede con un desagradable sabor amargo que nos fastidiaría la sopa.",
                    img: "https://www.recetasderechupete.com/wp-content/uploads/2016/11/sopas_ajo_castellana-525x360.jpg",
                    ingredients: "10 dientes de ajo\n6 huevos\n12 rebanadas de pan duro\n150 g de jamón serrano",
                    locationLat: 40.4167047,
                    locationLong: -3.7035825,
                    difficult: "Easy",
                    description: "Imprescindibles en Semana Santa y desayuno frecuente en muchas zonas del campo español. Nuestras abuelas y nuestras madres ya nos preparaban este plato tan natural, tradicional y reconfortante. Les bastaba con ajos, pan, pimentón, agua y un poco de jamón para que nos quedásemos embobados contemplando el fuego. Siempre mirando la cazuela para ver si ya estaban listas para cenar.",
                     duration: "15min"
            ),Recipes(
                name: "Sopa de Arroz",
                recipe: "1.-Pon el agua a hervir el agua, con el diente de ajo y la pastilla de Avecrem. En el primer hervor se echa el arroz y se deja cocer a fuego lento 10 minutos.\n2.-Ya está preparada esta sabrosa sopa, que se come calentita. ¡A saborearla!",
                img: "https://www.gallinablanca.es/files/thumbs/81cd7736a6d188e1398c3ee4bd83a9d002c2e9ae_r900_480_2.jpg",
                ingredients: "Caldo de Pollo\n 1 taza de arroz\n 1 diente de ajo",
                locationLat: 40.4167047,
                locationLong: -3.7035825,
                difficult: "Easy",
                description: "Cocinar una sopa nunca había sido tan sencillo. Solo necesita cuatro ingredientes: arroz, agua, ajo y Avecrem. Nada más. Así que si no eres un cocinitas no te preocupes porque esta receta es para todo el mundo y para todos los niveles. Es muy fácil, y además podrás disfrutar de un plato lleno de sabor.Lo mejor es que se prepara en tres pasos. Primero, hervir el agua con el Avecrem y el diente de ajo. Y segundo, echar el arroz y dejar que se cueza en su punto. Una vez cocido, ya podrás servir esta deliciosa sopa. ¿Fácil, no? Ya no tienes excusa para preparar platos sencillos, sanos y con gusto. ",duration: "40min"
            ),Recipes(
                name: "Sopa de Sémola",
                recipe: "1.-Lavar y trocear en dados pequeños la zanahoria, al apio, y la cebolla.\n2.-Cortar también en finos trozos la espinaca y la lechuga.\n3.-Sofreír estos ingredientes con aceite de oliva, o en su defecto mantequilla, ajo y la cebolla.\n4.-Agregar a una cazuela grande el caldo de pollo y las verduras sofritas.\n5.-Añadir la sémola, poco a poco, mientras hierve el agua, Esta es la que hará que quede con la textura correcta.\n6.-Dejar cocer a fuego medio durante 15 minutos. Si pasado el tiempo, los vegetales siguen estando duros, dejar por unos minutos más. De esta forma los vegetales soltaran sus nutrientes y enriquecerán el sabor y la textura de plato.\n7.-Agregar sal y pimienta, un poco de orégano y parmesano.\n8.-Hervir unos momentos para unificar sabores y que se derrita el queso.\n",
                img: "https://okdiario.com/img/2018/05/11/sopa-de-semola-655x368.jpg",
                ingredients: "Ocho cucharadas de sémola\nSiete tazas de caldo de pollo\nDos cucharadas de aceite de oliva\nUna cebolla grande\nSal",
                locationLat: 40.4167047,
                locationLong: -3.7035825,
                difficult: "Easy",
                description: "La sopa de sémola es un plato elegante y sencillo que aporta los nutrientes necesarios para complementar una dieta balanceada.  Además, contiene una textura especial, gracias a la harina de sémola, el ingrediente que la que da el toque especial. A pesar de su alto contenido proteico, la sopa de sémola es normalmente utilizada como plato de entrada; este plato posee muchas cualidades necesarias y beneficiosas para el organismo, haciéndolo ideal para incorporarlo a una alimentación saludable.",duration: "20min"
        )])
        let catDessert = Categories(name: "Dessert", image: "https://sevilla.abc.es/gurme//wp-content/uploads/2015/07/mousse-de-queso-con-cerezas.jpg", desc: "The best desserts", mrecipes: [Recipes(
            name: "Receta de Solomillo relleno de manzana",
            recipe: "Primero que todo pedir al carnicero que nos abra el solomillo como un libro." +
            "Poner la manzana troceada con las ciruelas en una sartén con mantequilla y un poco de azúcar moreno. Darle unas vueltas hasta que se ablanden un poco las manzanas" + "Rellenar el solomillo de cerdo con las manzanas y ciruelas",
            img: "https://t1.rg.ltmcdn.com/es/images/4/9/6/solomillo_relleno_de_manzana_65694_600.jpg",
            ingredients: "",
            locationLat: 0.0,
            locationLong: 0.0,
            difficult: "Hard",
            description: "",
            duration: "1H:20min")])
        
        arrcategories.append(contentsOf: [catMeat,catFish,catChiken,catSoup])
        
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

}

extension CategoriesVC: UITableViewDelegate, UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
       return arrcategories.count
    }
    
    func tableView(_ tableView:UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destination = RecipesVC(arrcategories[indexPath.row].arrecipes, categoriesName: arrcategories[indexPath.row].categoryName)
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
        cell.nRecipes.text = String(myRecipe.nrecipes)
        
        
        
        return cell
    }
   
}
