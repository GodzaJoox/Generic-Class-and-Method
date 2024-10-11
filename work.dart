class Pair<T,U>{
  T? first;
  U? second;

  Pair(this.first,this.second);

  void swap(){
    var temp = first;
    first = second as T?;
    second = temp as U?;
  }
  void displayPair(){
    print("First : $first, Second : $second");
  }
}
void main(List<String> args) {
  Pair<int,int> pair1 = Pair(45, 50);
  pair1.displayPair();
  pair1.swap();
  pair1.displayPair();
}