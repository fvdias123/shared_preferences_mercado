class Categoria {
  String name;
String imagem;
  Categoria({ required this.name, required this.imagem});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imagem':imagem
    };
  }

  factory Categoria.fromMap(Map<String, dynamic> json) {
    return Categoria(
      name: json['name'],
      imagem: json['imagem']
    );
  }
}
