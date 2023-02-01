
void main(List<String> arguments){
  final laptop1 = Computadora('Asus', 'Intel core i7', 16);
  // 1. Crear un objeto laptop2 con valores enviados al constructor
  final laptop2 = Computadora('Acer', 'Intel core i5', 12);

//Imprimir la variable 'laptop1' como instancia de 'Computadora'
print(laptop1);
//2. Imprimir los valores originales del objeto laptop2
print(laptop2);
//modificando un campo público del objeto laptop1
laptop1.ram = 8;
print(laptop1);
print('Marca de laptop1: ${laptop1.marca}');

// 3. modificar  cada una de las características del objeto laptop2
laptop2.marca = 'Dell';
laptop2.cpu = 'Intel core i7';
laptop2.ram = 16;
// 4. usar el get para imprimir cada uno de los valores de laptop2
print(laptop2);
print('Marca de laptop2: ${laptop2.marca}');
print('Marca de laptop2: ${laptop2.cpu}');
print('Marca de laptop2: ${laptop2.ram}');

// 1. Crear un objeto laptop2 con valores enviados al constructor
// 2. Imprimir los valores originales del objeto laptop2
// 3. modificar  cada una de las características del objeto laptop2
// 4. usar el get para imprimir cada uno de los valores de laptop2

}

class Computadora {
  //campos privados
  String _marca = 'deconocida';
  String _cpu = 'desconocida';
  int _ram = 0;

//Constructor
Computadora(String m, String c, int r){
_marca = m;
_cpu = c;
_ram = r;

}

//getter de _marca
String get marca {
  return _marca;
}

//setter de _marca
set marca(String valor){
  _marca = valor;
}

// getter de _cpu
String get cpu {
  return _cpu;
}

// setter de _cpu
set cpu(String valor){
  _cpu = valor;
}

//getter de _ram
int get ram{
  return _ram;
}

//setter de ram
set ram(int valor){
  _ram = valor;
}


@override
  String toString() {
    return 'marca: ${this.marca}, cpu: ${this.cpu}, ram: ${this.ram}';
  }
}