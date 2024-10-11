//interface
abstract class Printable{
  printData();
}
class Person implements Printable{
  @override
  var name;
  var age;
  Person(this.name,this.age);
  printData() {
    print("Name : $name Age : $age");
  }
}
class Product implements Printable{
  @override
  var nameproduct;
  var price;
  Product(this.nameproduct,this.price);
  printData() {
    print("Name : $nameproduct Price : $price");
  }
}
void printitem<T extends Printable>(T item){
  item.printData();
}
void main(List<String> args) {
  Person person = Person("John", 25);
  Product product = Product("Laptop", 1500);

  printitem(person);
  printitem(product);
}