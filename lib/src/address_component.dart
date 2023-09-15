class AddressComponent {
  final String? longName;
  final String? shortName;
  final List<String> types;

  AddressComponent({this.longName, this.shortName, this.types = const []});

  @override
  String toString() {
    return "{longName:$longName, shortName:$shortName, types:${types.toString()}";
  }
}
