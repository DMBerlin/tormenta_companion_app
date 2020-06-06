class AbilityPointsTable {
  Map<String, int> table = {
    '8': -2,
    '9': -1,
    '10': 0,
    '11': 1,
    '12': 2,
    '13': 3,
    '14': 4,
    '15': 6,
    '16': 8,
    '17': 11,
    '18': 14
  };

  int getPrice({String place}) {
    return table[place];
  }

  bool canBuy({current, bag}) {
    int wallet = bag + this.table[current.toString()];
    int target = current + 1;
    int price = this.table[target.toString()];
    return price <= wallet;
  }

  int sell({current, bag}) {
    return this.table[current.toString()] -
        this.table[(current - 1).toString()];
  }
}
