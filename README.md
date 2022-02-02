
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
  










