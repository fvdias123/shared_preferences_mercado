import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences_mercado/objects/Categoria.dart';
import 'package:shared_preferences_mercado/objects/produto.dart';

class CardCategoria extends StatelessWidget {
  const CardCategoria({super.key, required this.categoria});
  final Categoria categoria;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        hoverColor: const Color.fromARGB(255, 233, 222, 222),
        onTap: () {
          print("r4g4rg4r");
        },
        child: Column(
          children: [
            Image.asset(
              categoria.imagem,
              width: 200,
            ),
            Text(categoria.name)
          ],
        ),
      ),
    );
  }
}

class CardWhishlist extends StatelessWidget {
  const CardWhishlist({super.key, required this.produto});
  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          hoverColor: const Color.fromARGB(255, 233, 222, 222),
          onTap: () {
            print("r4g4rg4r");
          },
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Image.asset(
                  produto.imagem,
                  width: 200,
                ),
                Text(produto.name)
              ],
            ),
          ),
        ),
      ),
      Text(produto.desc),
    ]);
  }
}

class CardProduto extends StatelessWidget {
  const CardProduto({super.key, required this.produto});
  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 160,
      height: 290,
      child: Column(
        children: [
          Card(
            elevation: 4,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              hoverColor: const Color.fromARGB(255, 233, 222, 222),
              onTap: () {
                print("r4g4rg4r");
              },
              child: Column(
                children: [
                  Image.asset(
                    produto.imagem,
                    width: 200,
                  ),
                   Text(produto.name,maxLines: 1,)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            
            'R\$${produto.valor}',
            style: TextStyle(
              
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.amber[900],
            ),
          ),
          TextButton(
              onPressed: () {},
              child:
                  Row(children: [Icon(Icons.abc_outlined), Text("Add to bag")]),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.green))),
        ],
      ),
    );
  }
}
