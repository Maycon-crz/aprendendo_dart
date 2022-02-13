void main() {
// 1- Introdução a Variaveis

  String variavelNome = "Maycon";
  print(variavelNome);

  int valorVariavel = 10;
  print(valorVariavel);

  bool ehVerdadeiro = true;
  print(ehVerdadeiro);

  List<String> listaDePalavras = [
    "Maycon",
    "Alice"
  ];
  print('${listaDePalavras[0]} - ${listaDePalavras[1]}');

//2 - Introdução null-safety
  String? nome; //Permite setar uma variável nula - não recomendavel
  print(nome);
  //print(nome!);// ! obriga que a variavel não seja nula

  late String sobrenome; //Define que essa não possa ser futuramente setada como nula
  sobrenome = "Oliveira";
  print(sobrenome);

//3 - IF e SWITCH
  bool seguirEmFrente = true;

  if (seguirEmFrente) {
    print("Andar");
  } else {
    print("Parar");
  }

  if (10 > 5) {
    print("Dez é maior que cinco");
  }

  int valorInt = 5;

  switch (valorInt) {
    case 0:
      print("ZERO");
      break;
    case 1:
      print("UM");
      break;
    case 2:
      print("DOIS");
      break;
    default:
      print("PADRAO");
  }

//4 - Estruturas de repetição
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  int contador = 10;
  while (contador != 1) {
    contador = contador - 1;
    print('Loop -> $contador');
  }
//5 - Metodos e classes
  Celular celularDoMaycon = Celular('Azul', 5, 0.800, 5.7);
  Celular celularDoZe = Celular('Preto', 10, 0.100, 5.7);

  print(celularDoMaycon.toString());
  print(celularDoZe.toString());

  double resultado = celularDoMaycon.valorDoCelular(1000);
  print(resultado);

//6 - Orientação a objetos
  Carro mercedes = Carro("mercedes");
  Carro gol = Carro("gol");

  mercedes.setValue(3000);

  print(mercedes._valor);

//7 - Herança, Polimorfismo e Abstração

  //Herança pode usar algo herdado(extends) de outro objeto
  Maycon maycon = Maycon();
  maycon.falar();

  //Polimorfismo implementa, complementa, resiguinifica um método atribuindo algo a mais seguindo o conceito, padrão do método.
  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();
  pagamento = PagarComPix();
  pagamento.pagar();
}

abstract class Pagamento {
  //Abstração Método "regra" que não muda, pagar sempre sera pagar não mudaria para vender por exmplo para isso teria que criar mais um método.
  void pagar();
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print("Pagar com Boleto");
  }
}

class PagarComPix implements Pagamento {
  void pagar() {
    print("Pagar com pix");
  }
}

class Pai {
  String falar() {
    return "Girias";
  }
}

class Maycon extends Pai {}

abstract class Pessoa {
  String comunicar();
}

class PessoaEt implements Pessoa {
  String comunicar() {
    return "Olá mundo";
  }
}

class PessoaNaoEt implements Pessoa {
  String comunicar() {
    return "Bom dia";
  }
}

class Carro {
  final String modelo;
  String _segredo = "Muito dinheiro";

  int _valor = 1000; //Privado apenas pode acessar nesse arquivo

  int get valorDoCarro => _valor; //Para outros arquivos terem acesso

  void setValue(int valor) => _valor = valor; //Para alterar um valor privado

  Carro(this.modelo);
}

class Celular {
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdPros, this.peso, this.tamanho);

  String toString() {
    return "Cor: $cor; qtdPros: $qtdPros; peso: $peso; tamanho: $tamanho;";
  }

  double valorDoCelular(double valor) {
    return valor * qtdPros;
  }
}
