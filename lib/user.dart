class User{
  String name;
  String position;
  String company;
  int id;
  User({this.name, this.position, this.company, this.id});

  static List<User> getDummy(){
    List<User> userlist = [];
    for(int i = 0; i< 30; i++){
      userlist.add(User(id: i, name: "Nmae 1", position: "Mobile developer", company: "Yipl"));
    }
    return userlist;
  }
}