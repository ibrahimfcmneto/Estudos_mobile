//classe define como algo deve ser criado
//tipo a forma de um bolo
class Celular {
  //estes são os atributos, são as características dentro do objeto
  final String cor;
  final int qtd_processadores;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtd_processadores, this.tamanho, this.peso);

  //método: são as ações que o objeto pode fazer
  String toString(){
    return "Cor $cor, qtd de processadores: $qtd_processadores, tamanho $tamanho";
  }

}

void main()
{
  Celular celularDoDavid = Celular('Azul', 5, 0.800, 5.7);
  Celular celularDoIbra = Celular('Preto', 5, 0.800, 5.7);

  print(celularDoIbra.toString());
}