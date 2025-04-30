class Employee {
  String _name;
  int id;

  Employee(this._name, this.id);

  void _displayPrivate() {
    print("Private method: $_name");
  }

  void displayPublic() {
    print("Public method: $id");
  }
}