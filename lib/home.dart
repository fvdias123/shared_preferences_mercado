import 'package:flutter/material.dart';
import 'package:shared_preferences_mercado/cadastrocategoria.dart';
import 'package:shared_preferences_mercado/cadastroproduto.dart';
import 'package:shared_preferences_mercado/components/card.dart';
import 'package:shared_preferences_mercado/morewhishlist.dart';
import 'package:shared_preferences_mercado/objects/Categoria.dart';
import 'package:shared_preferences_mercado/objects/produto.dart';
import 'package:shared_preferences_mercado/produtos.dart';
import 'package:shared_preferences_mercado/server/shared_preference_service.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Produto> _produtos = [];
  final SharedPreferenceService _preferencesService = SharedPreferenceService();
  final TextEditingController _produtoController = TextEditingController();

  Future<void> _loadProdutos() async {
    List<Produto> produtos = await _preferencesService.getProdutos();
    setState(() {
      _produtos = produtos;
    });
  }

  Future<void> _removeProduto(int index) async {
    setState(() {
      _produtos.removeAt(index);
    });
    await _preferencesService.saveProdutos(_produtos);
  }

  @override
  void initState() {
    super.initState();
    _loadProdutos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos os Produtos'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView.builder(
              itemCount: _produtos.length,
              itemBuilder: (context, index) {
                return CardProduto(produto: _produtos[index]);
              })),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.black),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_awesome_mosaic_outlined,
                    color: Colors.black),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                label: "")
          ],
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cadastrocategoria()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cadastroproduto()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => produtos()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => morewhishlist()),
                );
                break;
              default:
            }
          }),
    );
  }
}
