class Produto {
  String name;
  String imagem;
  String desc;
  int quantidade;
  double valor;
  
  Produto(
      {
      required this.name,
      required this.imagem,
      required this.desc,
      required this.quantidade,
      required this.valor});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imagem': imagem,
      'desc': desc,
      'quantidade': quantidade,
      'valor': valor
    };
  }

  static Produto fromMap(Map<String, dynamic> json) => Produto(
        name: json['name'],
        imagem: json['imagem'],
        desc: json['desc'],
        quantidade: json['quantidade'],
        valor: json['valor'],
      );
}
