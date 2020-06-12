class ClassModel {
  String name;
  String description;
  Map perks;
  List trail;
  List abilities;

  ClassModel({
    String name,
    String description,
    Map perks,
    List trail,
    List abilities,
  }) {
    this.name = name;
    this.description = description;
    this.perks = perks;
    this.abilities = abilities;
    this.trail = trail;
  }
}
