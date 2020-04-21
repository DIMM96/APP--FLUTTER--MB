import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Labial',
      description: 'Es un excelente color',
      price: 10.00,
      imageUrl: 'images/labial.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Sombras',
      description: 'Descripcion del maquillaje 2',
      price: 20.00,
      imageUrl: 'images/sombras.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Delineador',
      description: 'Descripcion del maquillaje 3',
      price: 30.00,
      imageUrl: 'images/delineador.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Rimel',
      description: 'Descripcion del maquillaje 4',
      price: 40.00,
      imageUrl: 'images/rimel.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    notifyListeners();
  }
}
