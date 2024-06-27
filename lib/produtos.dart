import 'package:flutter/material.dart';
import 'package:shared_preferences_mercado/components/card.dart';
import 'package:shared_preferences_mercado/objects/produto.dart';

class produtos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snacks'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            children: [
              CardProduto(produto:Produto( name: 'Radhuni Shemay - 200 ', imagem: 'assets/imagem/produto1.png', desc: "qddqdqwd", quantidade: 12, valor: 60)),
              CardProduto(produto:Produto( name: 'Nescafé Classic Coffee', imagem: 'assets/imagem/produto3.png', desc: "qddqdqwd", quantidade: 12, valor: 15)),
              CardProduto(produto:Produto(name: 'Akher Chini (Deshi Sugar) - 1 kg', imagem: 'assets/imagem/produto4.png', desc: "qddqdqwd", quantidade: 12, valor: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
