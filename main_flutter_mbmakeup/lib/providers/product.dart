import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  //Creacion del objeto
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    //Constructor
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    //Metodo para notificar favoritos
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
