String greet(String name) => 'Привет, $name!';
int square(int x) => x * x;
double half(double x) => x / 2;

void describePet({required String name, String species = 'кот', int age = 0}) {
  print('$name – $species, возраст $age');
}

String repeat(String text, [int times = 2]) {
  String result = '';
  for (int i = 0; i < times; i++) {
    result += text;
  }
  return result;
}

void main() {
  print(greet('Артём'));
  print(greet('Мария'));
  print(square(5));
  print(half(10.0));

  describePet(name: 'Барсик', age: 3);
  describePet(name: 'Шарик', species: 'пёс');

  print(repeat('ха'));
  print(repeat('ха', 3));

  List<int> numbers = [3, 1, 4, 1, 5, 9];
  numbers.sort((a, b) => b - a); // сортировка по убыванию
  print(numbers);

  List<String> names = ['Артём', 'Мария', 'Иван'];

  List<String> upper = names.map((name) =>
  name.toUpperCase()).toList();
  print(upper);

  List<String> longNames = names.where
  ((name) => name.length > 4).toList();
  print(longNames);
}