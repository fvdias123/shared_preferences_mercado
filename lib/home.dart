import 'package:flutter/material.dart';
import 'package:shared_preferences_mercado/cadastrocategoria.dart';
import 'package:shared_preferences_mercado/cadastroproduto.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos os Produtos'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Card(
                  elevation: 4, 
                  margin:
                      const EdgeInsets.all(16), 
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    hoverColor: const Color.fromARGB(255, 233, 222, 222),
                    onTap: () {
                      print("r4g4rg4r");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(
                          0), 
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/imagem/image1.png',
                            width: 200,
                          ),
                          const Text('Fruits e Vegetables')
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4, 
                  margin:
                      const EdgeInsets.all(16), 
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    hoverColor: const Color.fromARGB(255, 233, 222, 222),
                    onTap: () {
                      print("r4g4rg4r");
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imagem/image3.png',
                          width: 200,
                        ),
                        const Text('Beverages')
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 4, 
                  margin:
                      const EdgeInsets.all(16), 
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    hoverColor: const Color.fromARGB(255, 233, 222, 222),
                    onTap: () {
                      print("r4g4rg4r");
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imagem/image5.png',
                          width: 200,
                        ),
                        const Text('Fruits e Vegetables')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Card(
                  elevation: 4, 
                  margin:
                      const EdgeInsets.all(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    hoverColor: const Color.fromARGB(255, 233, 222, 222),
                    onTap: () {
                      print("r4g4rg4r");
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imagem/image2.png',
                          width: 200,
                        ),
                        const Text('Breakfast')
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 4, 
                  margin:
                      const EdgeInsets.all(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    hoverColor: const Color.fromARGB(255, 233, 222, 222),
                    onTap: () {
                      print("r4g4rg4r");
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imagem/image4.png',
                          width: 200,
                        ),
                        const Text('Meat & Fish')
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 4, 
                  margin:
                      const EdgeInsets.all(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    hoverColor: const Color.fromARGB(255, 233, 222, 222),
                    onTap: () {
                      print("r4g4rg4r");
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/imagem/image6.png',
                          width: 200,
                        ),
                        const Text('Dairy')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items:  [
        BottomNavigationBarItem(
activeIcon: IconButton(onPressed: () {
  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cadastrocategoria()), 
            );
}, icon: const Icon (Icons.home_outlined,color: Colors.black,)),
            icon: Icon(Icons.home_outlined, color: Colors.black), label: ""),
              BottomNavigationBarItem(
                
activeIcon: IconButton(onPressed: () {
  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cadastroproduto()), 
            );
}, icon: const Icon (Icons.auto_awesome_mosaic_outlined, color: Colors.black,)),
            icon: Icon(Icons.auto_awesome_mosaic_outlined, color: Colors.black), label: ""), 
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
      ]),
    );
  }
}
