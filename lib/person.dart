class Person {

  late String name;
  late String id;
  late String email ;
  Person({required this.name, required this.id, required this.email}){


  }
  getDetails(){
    print("name :$name , id :$id, email: $email ");
  }
}