import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/constants/models.dart';

List<MagasinCategory> magasinCategories = [
  MagasinCategory(
    magasinType: MagasinType.restaurant,
    imagepath: 'assets/icons/markets/restaurant.svg',
    title: 'Restaurants',
    subcategory: [
      MagasinSubCategory(
          subtypes: Subtypes.restaurant,
          title: 'Restaurent',
          imagepath: 'assets/icons/markets/restaurant.svg'),
      MagasinSubCategory(
          subtypes: Subtypes.fastFood,
          title: 'Fast Food',
          imagepath: 'assets/icons/markets/submarkets/fast_food.svg'),
      MagasinSubCategory(
          subtypes: Subtypes.pizzeria,
          title: 'Pizzeria',
          imagepath: 'assets/icons/markets/submarkets/pizzeria.svg'),
    ],
  ),
  MagasinCategory(
    magasinType: MagasinType.Fruits,
    imagepath: 'assets/icons/markets/fruits.svg',
    title: 'Fruits & \nLégumes',
    subcategory: null,
  ),
  MagasinCategory(
    magasinType: MagasinType.Allimentation,
    imagepath: 'assets/icons/markets/alimentation.svg',
    title: 'Allimentation\nGénérale',
    subcategory: [
      MagasinSubCategory(
          subtypes: Subtypes.grocerie,
          title: 'Grocerie',
          imagepath: 'assets/icons/markets/alimentation.svg'),
      MagasinSubCategory(
          subtypes: Subtypes.chocolat,
          title: 'Confiserie \n& Chocolat',
          imagepath: 'assets/icons/markets/submarkets/Confiserie & Chocolat.svg'),
      MagasinSubCategory(
          subtypes: Subtypes.fromagerie,
          title: 'Fromagerie',
          imagepath: 'assets/icons/markets/submarkets/fromagerie.svg'),
    ],
  ),
  MagasinCategory(
    magasinType: MagasinType.Boucherie,
    imagepath: 'assets/icons/markets/boucherie.svg',
    title: 'Boucherie &\nPoissonerie',
    subcategory: [
      MagasinSubCategory(
        subtypes: Subtypes.boucherie,
        title: 'Boucherie',
        imagepath: 'assets/icons/markets/boucherie.svg',
      ),
      MagasinSubCategory(
        subtypes: Subtypes.poissonerie,
        title: 'Poissonerie',
        imagepath: 'assets/icons/markets/submarkets/poissonerie.svg',
      ),
    ],
  ),
  MagasinCategory(
    magasinType: MagasinType.Patisserie,
    imagepath: 'assets/icons/markets/patisserie.svg',
    title: 'Pâtisserie\n& crêperie',
    subcategory: [
      MagasinSubCategory(
          subtypes: Subtypes.patisserie,
          title: 'Pàttisserie',
          imagepath: 'assets/icons/markets/patisserie.svg'),
      MagasinSubCategory(
          subtypes: Subtypes.creperie,
          title: 'Creperie',
          imagepath: 'assets/icons/markets/submarkets/creperie.svg'),
    ],
  ),
  MagasinCategory(
    magasinType: MagasinType.Cosmetiques,
    imagepath: 'assets/icons/markets/cosmetique.svg',
    title: 'Cosmétiques',
    subcategory: null,
  ),
  MagasinCategory(
      magasinType: MagasinType.informatique,
      imagepath: 'assets/icons/markets/informatique.svg',
      title: 'Matériel \nInformatique',
      subcategory: null),
  MagasinCategory(
      magasinType: MagasinType.bureautique,
      imagepath: 'assets/icons/markets/bureautique.svg',
      title: 'Bureautique',
      subcategory: null),
];
