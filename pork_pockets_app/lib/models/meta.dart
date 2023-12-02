class Meta {
  String nomeMeta;
  double valor;
  bool favorite;

  Meta({
    required this.nomeMeta,
    required this.valor,
    this.favorite = false,
  });

  String getNome() {
    return this.nomeMeta;
  }

  double getValor() {
    return this.valor;
  }

  bool getFavorite(){
    return this.favorite;
  }
}
