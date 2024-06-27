import 'package:flutter/material.dart';
import 'package:shared_preferences_mercado/components/card.dart';
import 'package:shared_preferences_mercado/objects/produto.dart';

class morewhishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whishlist'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CardWhishlist(
                produto: Produto(
                    name: "Fruits e Vegetables",
                    desc: "Nestle Nido Full Cream",
                    imagem: 'assets/imagem/image1.png',
                    valor: 23.6,
                    quantidade: 2)),
            CardWhishlist(
                produto: Produto(
                    name: "Beverages",
                    desc: "Nestle Nido Full Cream",
                    imagem: 'assets/imagem/image3.png',
                    valor: 23.6,
                    quantidade: 2)),
          ],
        ),
      ),
    );
  }
}
