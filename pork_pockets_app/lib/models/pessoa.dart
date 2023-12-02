class Pessoa{
  String nome;
  String email;
  String senha;
  double salario;

Pessoa({
  required this.nome,
  required this.email,
  required this.senha,
  this.salario = 0000.00,
});

String getNome(){
  return this.nome;
}

String getEmail(){
  return this.email;
}

String getSenha(){
  return this.senha;
}

double getSalario(){
  return this.salario;
}

}