import 'dart:io';

//cadastro de usuários
class Usuario{
  //coloca os atributos
  String nome;
  String email;
  String senha;

  //adiciona o construtor
  Usuario(this.nome, this.email, this.senha);

  //ação do usuário
  bool fazer_login(String emailDigitado, String senhaDigitada)
  {
    if(emailDigitado == email && senhaDigitada == senha)
    {
      print("Login bem sucedido!");
      return true;
    }
    else{
      print("Email ou senha incorretos");
      return false;
    }
  }
}

void main()
{
  //criação de um map vazio
  Map<String, String> registrar = {};

  //criar uma lista de usuários
  List<Usuario> usuarios = [];

  print("Bem vindo ao sistema!");

  while (true)
  {

    print("O que deseja fazer?");
    print("[1] registrar-se");
    print("[2] fazer login");
    print("[3] listar usuarios");
    print("[4] sair");

    int opcao = 0;

    while (true)
    {
      stdout.write("Opção escolhida: ");
      opcao = int.parse(stdin.readLineSync()!);
      if (opcao != 1 && opcao != 2 && opcao != 3 && opcao != 4)
      {
        print("Escolha uma opção entre 1 e 3");
      }
      else
      {
        break;
      }
    }

    if(opcao == 1)
    {
      print("Vamos fazer seu cadastro!");

      stdout.write("nome: ");
      registrar["nome"] = stdin.readLineSync()!;

      stdout.write("email: ");
      registrar["email"] = stdin.readLineSync()!;

      stdout.write("senha: ");
      registrar["senha"] = stdin.readLineSync()!;

      usuarios.add(Usuario(registrar["nome"]!, registrar["email"]!, registrar["senha"]!));
      print("Cadastro realizado com sucesso! \n");
    }

    else if (opcao == 2)
    {
      if(registrar.isEmpty)
      {
        print("Nenhum usuário cadastrado!");
      }

      else
      {
        stdout.write("Email: ");
        String emailDigitado = stdin.readLineSync()!;

        stdout.write("Senha: ");
        String senhaDigitada = stdin.readLineSync()!;

        for (Usuario u in usuarios)
        {
          u.fazer_login(emailDigitado, senhaDigitada);
        }
      }
    }

    else if (opcao == 3)
    {
      for (Usuario u in usuarios)
      {
        print("Nome: ${u.nome} | Email: ${u.email}");
      }
    }

    else if (opcao == 4)
    {
      print("Saindo");
      break;
    }

  }
}