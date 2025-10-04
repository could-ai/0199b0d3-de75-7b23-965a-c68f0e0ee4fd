import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
      id: '1',
      name: 'Camiseta Casual',
      description: 'Una camiseta cómoda y elegante para el uso diario. Hecha de 100% algodón.',
      price: 25.00,
      imageUrl: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80',
    ),
    Product(
      id: '2',
      name: 'Jeans Slim Fit',
      description: 'Jeans modernos y ajustados que ofrecen comodidad y estilo. Perfectos para cualquier ocasión.',
      price: 55.00,
      imageUrl: 'https://images.unsplash.com/photo-1602293589914-9e296ba2a7c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
    ),
    Product(
      id: '3',
      name: 'Sudadera con Capucha',
      description: 'Mantente abrigado y a la moda con esta sudadera con capucha de alta calidad.',
      price: 45.00,
      imageUrl: 'https://images.unsplash.com/photo-1556821843-a7e635a492a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
    ),
    Product(
      id: '4',
      name: 'Zapatillas Deportivas',
      description: 'Zapatillas ligeras y cómodas, ideales para correr o para un look casual.',
      price: 75.00,
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80',
    ),
     Product(
      id: '5',
      name: 'Chaqueta de Cuero',
      description: 'Una chaqueta de cuero clásica que nunca pasa de moda. Hecha con materiales de primera calidad.',
      price: 150.00,
      imageUrl: 'https://images.unsplash.com/photo-1521223890158-f9f7c3d5d504?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=778&q=80',
    ),
    Product(
      id: '6',
      name: 'Vestido de Verano',
      description: 'Un vestido ligero y fresco, perfecto para los días calurosos de verano.',
      price: 40.00,
      imageUrl: 'https://images.unsplash.com/photo-1572804013427-4d7ca7268211?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda de Ropa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navegar a la pantalla del carrito
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductCard(product: products[i]),
      ),
    );
  }
}
