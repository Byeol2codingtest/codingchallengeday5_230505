enum City { seoul, daegu, ilsan }

void main() {
  var apiData = [
    {
      "name": 'KB',
      "city": City.seoul,
      "term": 'kimchi',
      "definition": 'lovely',
      "budget": 100,
    },
    {
      "name": 'HJ',
      "city": City.daegu,
      "term": 'APT',
      "definition": 'Expensive',
      "budget": 50,
    },
    {
      "name": 'EJ',
      "city": City.ilsan,
      "term": 'Music',
      "definition": 'makes me happy',
      "budget": 10,
    },
  ];

  for (var userJson in apiData) {
    var user = User.fromJson(userJson);
    user.showMeTheListOfUsersname();
  }
}

typedef ListOfUsers = Map<String, dynamic>;

class User {
  String name, term, definition;
  City city;
  int budget;

  User({
    required this.name,
    required this.city,
    required this.term,
    required this.definition,
    required this.budget,
  });

  User.fromJson(ListOfUsers userJson)
      : name = userJson['name'],
        city = userJson['city'],
        term = userJson['term'],
        definition = userJson['definition'],
        budget = userJson['budget'];

  void showMeTheListOfUsersname() {
    print(name);
  }
}
