
# Fundamentos ⚔️

O main é a porta de entrada para qualquer programa escrito em dart.

```dart
  void main() {
    print('Hello World!');
  }
  
```

## 1. Variáveis 
````dart
var nome = "Grazi";
// aqui vemos que guardei o meu nome dentro da variavel 'nome'
int a = 2;
double b = 3.1415;
`````
a diferença entre usar var ou o tipo da variavel, é que o próprio dart infere qual é o tipo da variavel de entrada.

````dart
main(){
	var n1 = 2;
	var n2 = 4.56;
	print((n1 + n2).toString());

	print(n1.runtimeType); // aqui ele me diz qual é o tipo da variavel, que nesse caso é int
	print(n2.runtimeType); // double

	var texto = ((n1 + n2).toString());
	print(texto.runtimeType); //String
	print(texto is String); //true
}
`````

## 2. Constantes

Utilizamos a palavra reservada “final” para indicar constante. É recomendado que em nossas aplicações, a constante seja sempre utilizada caso não precisemos alterar a variavel.

`````dart
main(){
	stdout.write("Informe o raio: ");
	final entradaDoUsuario = stdin.readLineSync();
	final double raio = double.parse(entradaDoUsuario);
	print("O valor da área é: " area.toString()); //transformando em string para poder concatenar
}

`````

- Diferença entre **const** e **final**
    - tanto variaveis const e final são imutáveis, porém há uma diferença sutil para cada uma delas
        
        por exemplo, o const é executado em tempo de compilação, logo, ele não tem acesso a nada durante a execução do aplicativo. Então, se algo precisa ser criado após a compilação do código, ele não pode ser definido como const
        
        ```dart
        const int meuConst = 2 + 3 * 9;
        //essa expressão é válida como const pq ela é calculado no momento em que
        //rodamos a aplicação
        ```
        
        Reparando no código abaixo, vemos que ele não pode ser atribuido a constante, pois só saberemos a hora atual depois que o código for compilado.

        ````
        const int meuConst = DateTime.now(); // errado
        final meuFinal = DateTime.now(); // certo
        ````
        
## 3. Tipos básicos

- Números(int e double)
- String(String)
- Booleano(bool)

- List
- Set
- Map

As **listas** no dart funcionam como um array, armazena dados que podem ser acessados por index

```dart
	List aprovados = ['Ana', 'Carlos', 'Daniel'];
	print(aprovados[0]); //Ana
```

Já o Map é como se fossem objetos contendo chave e valor

```dart
	var telefones = {
	'João': '+55 (11) 98765-4321',
	'Maria': '+55 (21) 12345-6789',
	}

	print(telefones);
	print(telefones['joão']);
	print(telefones.values);
```

O Set funciona é conhecido como conjunto e ele não é indexado(não conseguimos acessar a partir do index)

```dart
	var times = {'Vasco', 'Flamengo', 'Fortaleza'};
	print(times.length);//3
	print(times.contains('Vasco'));//true
	times.add('Palmeiras')
```

OBS: uma diferença importante entre a List e o Set, é que o Set não aceita repetição

## 4. Notação ponto

```dart
	String s1 = "grazi suco";
	String s2 = s.substring(0,8);
	String s3 = s2.toUpperCase();
	String s4 = s3.padRight(15, "!");

print(s4); 
```

 A partir de todo esse código, eu não precisaria declarar tantas variaveis, podemos apenas juntar os pontos:
 
 ```dart
	 var s5 = "grazi suco".substring(0,8).toUpperCase().padRight(15, '!');
	 print(s5);
 ```
## 5 Operadores  

Operadores Aritméticos
```dart
	int a = 7;
	int b = 3;
	int resultado = a + b;

	print(resultado);
	print(a - b);
	print(a * b);
	print(a/b);
	print(a % b);
	print(a+(b*a)-(b/a));
```
Operadores Lógicos
```dart
	bool ehFragil = true;
	bool ehCaro = false;

	print(ehFragil && ehCaro);// E
	print(ehFragil || ehCaro);// OU
	print(ehFragil ˆ ehCaro); // OU Exclusivo(obrigatoriamente um dos dois tem que ser verdadeiro)
	print(!ehCaro)//NÃO - Unário/Prefix
```

Operadores de atribuição 

```dart
	int a = 2;
	a = a + 3;
	a += 3;
	print(a); //8
```

Operadores Relacionais → o resultado é sempre booleano
```dart
	print(3 > 2); // true
	print(3 >= 2); // true
	print(10 <= 5); // false
	print(3 == '3'); // false
```
# Estruturas de Controle ⚔️
### IF/ELSE

```dart
	import "dart:math";

	void main() {
		var nota = Random().nextInt(11);

	  if(nota >= 7){
	    print("aprovado");
	  }else{
	    print("reprovado");
	  }
	}
```

### FOR

```dart
	for (int a = 0; a < 10; a++){
		print("a = $a");
	}

	print("fim");
```

### FOR IN

```dart
	//retorna apenas o valor

	var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
	for(var nota in notas){
		print("O valor da nota é $nota.");
	}

	//O valor da nota é 8.9
	//O valor da nota é 9.3
	//O valor da nota é 7.8
	// ...

	//matriz

	var coordenadas = [
		[1,3],
		[9,2],
		[19, 23],
		[2,14]
	];

	for(var coordenada in coordenadas){
		for(var ponto in coordenada){
			print("Valor do ponto é $ponto");
		}
	}
```

### FOR COM MAP

```dart
	Map<String, double> notas = {

	    'João Pedro': 9.1,
	    'Maria Augusta': 7.2,
	    'Ana Silva': 6.4,
	    'Roberto Andrade': 8.8,
	  };

	  for(String nome in notas.keys){
	    print("Nome do aluno é $nome");
	  }

		for(double nota in notas.values){
	    print("A nota é $nota");
	  }

		for(var registro in notas.entries){
	    print("O ${registro.key} tem nota ${registro.value}");
	  }
  ```

  ### WHILE
  
  ```dart
	import "dart:math";
	import "dart:io";

	void main() {
	  var resposta = '';

	  while(resposta != "sair"){
	    resposta = stdin.readLineSync().toString();
	  }

	  print(resposta);
	}
```





