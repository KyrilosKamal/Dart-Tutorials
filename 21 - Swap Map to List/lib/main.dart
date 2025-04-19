void main() {
  Map Person = {
    'namwe': "Kyrillos",
    'age': 30,
    'height': 1.80,
    'weight': 73,
    'isMarried': false,
    'isStudent': true,
    'isEmployed': true,
    'isSingle': false,
    'isDivorced': false,
    'isWidowed': false,
    'isSeparated': false,
    'isInRelationship': false,
    'isEngaged': false,
  };

  List PersonInfo = [];

  Person.forEach((key, value) {
    PersonInfo.add(value);
  });

  print(PersonInfo);
}
