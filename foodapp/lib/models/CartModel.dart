class CartModel {
  List<Map> orderItems = [];
  void addItemsToCart(String name, String image, int price, int quantity) {
    orderItems.add(
      {
         "name" : name,
         "image" : image,
         "price" : price,
         "quntity" : quantity,
      }
    );
  }
}