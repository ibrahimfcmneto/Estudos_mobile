void main() {
  //tipo   nome            valor
  String variavel_nome = "Ibrahim";
  
  int variavel_numero_inteiro = 10;
  
  bool eh_verdadeiro = true;
  
  //lista
  
  List<String> lista_de_palavras = ["ibrahim", "Thiago", "Felipe"];
  
  for (var i=0; i< lista_de_palavras.length; i++)
  {
    print(" ${lista_de_palavras[i]};");
  }
  
  int i = 0;
  
  while (i < lista_de_palavras.length)
  {
    print("${lista_de_palavras[i]}");
    i++;
  }
  
}