class User {
  final String name ;
  final int age;
  User({required this.name,required this.age});

  @override
  String toString() {
    return 'User(name: $name, age:$age)';
  }
}