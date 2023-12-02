import 'package:pork_pockets_app/models/despesas.dart';

class DespesasRepository{

  static List<Despesas> despesaFix = [
    Despesas(nome: 'Luz', valor: 200),
    Despesas(nome: 'Água', valor: 150),
    Despesas(nome: 'Gas', valor: 150)
  ];

  static List<Despesas> despesaVar = [
    Despesas(nome: 'Cabelereiro', valor: 100),
    Despesas(nome: 'Bar', valor: 200)
  ];

}