import 'package:pork_pockets_app/models/despesas.dart';
import 'package:pork_pockets_app/models/meta.dart';

class Pessoa {
  String nome;
  String email;
  String senha;
  double salario;
  List<Despesa> despesasFixas = [];
  List<Despesa> despesasVars = [];
  List<Meta> metas = [];

  Pessoa({
    required this.nome,
    required this.email,
    required this.senha,
    this.salario = 0000.00,
  });

  void setSlario(double salario)
  {
    this.salario = salario;
  }

  void setDespesasFixas(Despesa despesa)
  {
    despesasFixas.add(despesa);
  }

  void setDespesasVars(Despesa despesa)
  {
    despesasVars.add(despesa);
  }

  void setMetas(Meta meta)
  {
    metas.add(meta);
  }
}