import 'package:pork_pockets_app/models/pessoa.dart';

class UsersRepository
{
  UsersRepository._();
  
  static final instance = UsersRepository._();
  
  List<Pessoa> user = 
  [
    Pessoa(nome: 'Cleiton', email: 'cleiton@gmail.com', senha: '1234'),
  ];
}