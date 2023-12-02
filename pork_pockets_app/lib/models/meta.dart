class Meta {
  String nome;
  double valor;
  bool isFavorited;
  bool isExpanded;
  
  Meta({required this.nome, required this.valor, this.isFavorited = false, this.isExpanded = false});
}