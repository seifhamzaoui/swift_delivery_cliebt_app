import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/constants/models.dart';

List<MagasinCategory> magasinCategories = [
  MagasinCategory(
    magasinType: MagasinType.restaurant,
    imagepath: 'assets/icons/markets/restaurant.png',
    title: 'Restaurants',
    subcategory: [
      MagasinSubCategory(
          subtypes: Subtypes.restaurant,
          title: 'Restaurent',
          imagepath: 'assets/icons/markets/restaurant.png'),
      MagasinSubCategory(
          subtypes: Subtypes.fastFood,
          title: 'Fast Food',
          imagepath: 'assets/icons/markets/submarkets/fast_food.png'),
      MagasinSubCategory(
          subtypes: Subtypes.pizzeria,
          title: 'Pizzeria',
          imagepath: 'assets/icons/markets/submarkets/pizzeria.png'),
    ],
  ),
  MagasinCategory(
    magasinType: MagasinType.Fruits,
    imagepath: 'assets/icons/markets/fruits.png',
    title: 'Fruits & \nLégumes',
    subcategory: null,
  ),
  MagasinCategory(
    magasinType: MagasinType.Allimentation,
    imagepath: 'assets/icons/markets/alimentation.png',
    title: 'Allimentation\nGénérale',
    subcategory: [
      MagasinSubCategory(
          subtypes: Subtypes.grocerie,
          title: 'Grocerie',
          imagepath: 'assets/icons/markets/alimentation.png'),
      MagasinSubCategory(
          subtypes: Subtypes.chocolat,
          title: 'Confiserie \n& Chocolat',
          imagepath: 'assets/icons/markets/submarkets/Confiserie & Chocolat.png'),
      MagasinSubCategory(
          subtypes: Subtypes.fromagerie,
          title: 'Fromagerie',
          imagepath: 'assets/icons/markets/submarkets/fromagerie.png'),
    ],
  ),
  MagasinCategory(
    magasinType: MagasinType.Boucherie,
    imagepath: 'assets/icons/markets/boucherie.png',
    title: 'Boucherie &\nPoissonerie',
    subcategory: [
      MagasinSubCategory(
        subtypes: Subtypes.boucherie,
        title: 'Boucherie',
        imagepath: 'assets/icons/markets/boucherie.png',
      ),
      MagasinSubCategory(
        subtypes: Subtypes.poissonerie,
        title: 'Poissonerie',
        imagepath: 'assets/icons/markets/submarkets/poissonerie.png',
      ),
    ],
  ),
  MagasinCategory(
    magasinType: MagasinType.Patisserie,
    imagepath: 'assets/icons/markets/patisserie.png',
    title: 'Pâtisserie\n& crêperie',
    subcategory: [
      MagasinSubCategory(
          subtypes: Subtypes.patisserie,
          title: 'Pàttisserie',
          imagepath: 'assets/icons/markets/patisserie.png'),
      MagasinSubCategory(
          subtypes: Subtypes.patisserie,
          title: 'Pàttisserie',
          imagepath: 'assets/icons/markets/patisserie.png'),
    ],
  ),
  MagasinCategory(
    magasinType: MagasinType.Cosmetiques,
    imagepath: 'assets/icons/markets/cosmetique.png',
    title: 'Cosmétiques',
    subcategory: null,
  ),
  MagasinCategory(
      magasinType: MagasinType.informatique,
      imagepath: 'assets/icons/markets/informatique.png',
      title: 'Matériel \nInformatique',
      subcategory: null),
  MagasinCategory(
      magasinType: MagasinType.bureautique,
      imagepath: 'assets/icons/markets/bureautique.png',
      title: 'Bureautique',
      subcategory: null),
];
