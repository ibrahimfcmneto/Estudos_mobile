import 'dart:io';

void main()
{
  int numero_escolhido = 6;

  for(int i=1; i<=4; i++)
  {
    print("$iª tentativa");
    print("Digite um numero: ");
    int valor_digitado = int.parse(stdin.readLineSync()!);
    if(valor_digitado == numero_escolhido)
    {
      print("Parabéns! você acertou o número em $i tentativas");
      return;
    }
    else if (valor_digitado > numero_escolhido){
      print("Muito alto, esolha um numero menor");
    }
    else{
      print("Muito baixo, escolha um numero maior");
    }
  }

  print("Suas tentativas acabaram!");

}