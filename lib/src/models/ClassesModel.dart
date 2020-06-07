class ClassModel {
  String name;
  String description;
  Map perks;
  Map abilities;
  Map trail;

  ClassModel({
    String name,
    String description,
    Map perks,
    Map abilities,
    Map trail,
  }) {
    this.name = name;
    this.description = description;
    this.perks = perks;
    this.abilities = abilities;
    this.trail = trail;
  }
}
