import 'package:flutter/material.dart';

class cadastroproduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Nova Categoria'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          children: [
            Column(
              children: [
                 TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.shopping_basket_outlined),
                        hintText: '',            
                        filled: true,
                        fillColor: Color.fromARGB(255, 221, 216, 216),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none                      
                        ),
                      ),
                    ),
                     SizedBox(height: 50),
              ],              
            ),
             Column(
              children: [
                TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.label_outline),
                        hintText: 'Descrição (Opcional)',            
                        filled: true,
                        fillColor: Color.fromARGB(255, 221, 216, 216),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none                      
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
              ],              
            ),
             Column(
              children: [
                TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.add_a_photo_outlined),
                        hintText: 'Upload Images Here',            
                        filled: true,
                        fillColor: Color.fromARGB(255, 221, 216, 216),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none                      
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
              ],              
            ),
          ],
        ),
      ),  
      bottomNavigationBar: 
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,          
          ),
          child: IconButton(     
            onPressed:(){}, 
            icon: const Icon(Icons.save_outlined),color:Colors.white,),
        ),
      ),
    );
  }
}