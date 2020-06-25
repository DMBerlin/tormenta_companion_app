class NewSheetRules {
  static Map<String, int> attributeCost = {
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

  static int getAttributeCost({String place}) {
    return attributeCost[place];
  }

  static bool canBuyAttribute({int current, int bag}) {
    int wallet = bag + attributeCost[current.toString()];
    int target = current + 1;
    int price = attributeCost[target.toString()];
    return price <= wallet;
  }

  static int sell({current, bag}) {
    return attributeCost[current.toString()] -
        attributeCost[(current - 1).toString()];
  }
}
