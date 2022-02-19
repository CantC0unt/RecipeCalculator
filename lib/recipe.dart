class Recipe {
  String name;
  String imageurl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.name, this.imageurl, this.servings, this.ingredients);

  static List<Recipe> data = [
    Recipe("Chocolate Chip Cookies", "asset/chocolatechipcookies.jpg", 36, [
      Ingredient(1, "cup", "Salted Butter", "softened"),
      Ingredient(1, "cup", "white sugar", "granulated"),
      Ingredient(1, "cup", "light brown sugar", "packed"),
      Ingredient(2, "tsp", "pure vanilla extract", ""),
      Ingredient(2, "", "large eggs", ""),
      Ingredient(3, "cups", "all-purpose flour", ""),
      Ingredient(1, "tsp", "baking soda", ""),
      Ingredient(0.5, "tsp", "baking powder", ""),
      Ingredient(1, "tsp", "sea salt", ""),
      Ingredient(
          2, "cups", "chocolate chips", "or chunks, or chopped chocolate")
    ]),
    Recipe("Grilled Cheese Sandwich", "asset/grilledcheese.jpg", 2, [
      Ingredient(4, "slices", "white bread", ""),
      Ingredient(3, "tablespoons", "butter", "divided"),
      Ingredient(2, "slices", "Cheddar cheese", "")
    ]),
    Recipe("Hawaiian Pizza", "asset/hawaiianpizza.jpg", 8, [
      Ingredient(1, "pound", "pizza dough", "or homemade dough"),
      Ingredient(
          1, "tsp", "olive oil", "for greasing baking sheet and brushing"),
      Ingredient(0, "", "cornmeal", "for sprinkling baking sheet (optional)"),
      Ingredient(0.5, "cup", "pizza sauce", "or homemade marinara sauce"),
      Ingredient(1, "cup", "mozzarella cheese", "shredded"),
      Ingredient(0.5, "cup", "Canadian bacon", "about 4 to 5 slices"),
      Ingredient(0.25, "cup", "pineapple", "diced"),
      Ingredient(
          0.25, "cup", "bacon", "chopped, cooked, ¼-inch dice, about 4 slices"),
      Ingredient(0, "", "oregano", "for sprinkling (optional)")
    ]),
    Recipe("Spaghetti with Meatballs", "asset/spaghettimeatballs.jpg", 4, [
      Ingredient(0.5, "Kg", "spaghetti", ""),
      Ingredient(0.5, "kg", "beef", "ground"),
      Ingredient(0.3, "cup", "bread crumbs", ""),
      Ingredient(0.25, "cup", "parsley", "finely chopped"),
      Ingredient(0.25, "cup", "Parmesan", "freshly grated"),
      Ingredient(1, "", "large egg", ""),
      Ingredient(2, "cloves", "garlic", "minced"),
      Ingredient(0, "", "Kosher salt", ""),
      Ingredient(0.5, "tsp", "red pepper", "flakes"),
      Ingredient(2, "tbsp", "extra-virgin olive oil", ""),
      Ingredient(0.5, "cup", "onion", "finely chopped"),
      Ingredient(1, "can", "tomatoes", "crushed"),
      Ingredient(1, "", "bay leaf", ""),
      Ingredient(0, "", "black pepper", "Freshly ground")
    ]),
    Recipe("Taco Salad", "asset/tacosalad.jpg", 6, [
      Ingredient(0.5, "Kg", "Ground beef", ""),
      Ingredient(1, "tsp", "Avocado oil", "or any oil of choice"),
      Ingredient(2, "tbsp", "Taco seasoning", "store-bought or home-made"),
      Ingredient(1, "cup", "Romaine lettuce", "chopped"),
      Ingredient(1.3, "cup", "Grape tomatoes", "halved"),
      Ingredient(0.75, "cup", "Cheddar cheese", "shredded"),
      Ingredient(1, "", "medium Avocado", "cubed"),
      Ingredient(0.5, "cup", "Green onions", "chopped"),
      Ingredient(0.3, "cup", "Salsa", ""),
      Ingredient(0.3, "cup", "Sour cream", "")
    ]),
    Recipe("Tomato Soup", "asset/tomatosoup.jpg", 2, [
      Ingredient(4, "tbsp", "unsalted butter", ""),
      Ingredient(0.5, "large", "onion", "cut into large wedges"),
      Ingredient(1, "can", "tomatoes", "whole peeled or crushed"),
      Ingredient(
          1.5, "cups", "water", "low sodium vegetable stock, or chicken stock"),
      Ingredient(0.5, "tsp", "fine sea salt", "or more to taste")
    ])
  ];
}

class Ingredient {
  double amount;
  String unit;
  String item;
  String additional;

  Ingredient(this.amount, this.unit, this.item, this.additional);
}
