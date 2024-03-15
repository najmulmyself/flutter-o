//display the details of each fruit
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

//apply discount to the price of each fruit
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double price = fruit['price'];
    double discountedPrice = price - (price * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}

void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];

  //original details of each fruit
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  // Apply discount of 10% to each fruit
  applyPriceDiscount(fruits, 10);

  //updated details of each fruit after applying the discount
  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}
