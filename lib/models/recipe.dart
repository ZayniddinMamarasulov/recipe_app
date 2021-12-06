class Recipe{
  String label;
  String imageUrl;
  String info;

  Recipe(this.label,this.imageUrl,this.info);

  static List<Recipe> recipes = [
    Recipe("Spaghetti and meatballs", "assets/image1.jpeg","Info about Spaghetti"),
    Recipe("Tomato Soup", "assets/tomato.jpeg","Info about Tomato Spoup"),
    Recipe("Grilled Cheese", "assets/grilledcheese.jpeg","Info about Grilled cheese"),
    Recipe("Chocolate chip cookies", "assets/chocolate.jpeg","Info about cookies"),
    Recipe("Taco salad", "assets/taco.jpeg","Info about Taco salad"),
    Recipe("Pizza", "assets/pizza.jpeg","Info about Pizza"),
  ];
}