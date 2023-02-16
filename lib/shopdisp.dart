

class shopitem {
  String _itemn;
  String _price;
  String _quantity;
  //1 electronic, 2 cloths, 3 fooditem
  String _type; //1 electronic, 2 cloths, 3 fooditem
  //1 electronic, 2 cloths, 3 fooditem
  String get itemn => _itemn;
  ///////////////////////////////////static int Choice=0;
  set itemn(String value) {
    _itemn = value;
  }
  //static list(s)
  static List<shopitem> shopitems1 = [
    shopitem('Neapolitan Pizza',"210 egp","1","1"),
    shopitem('Chicago Pizza',"160 egp","2","1"),
    shopitem('New York-Style Pizza',"70 egp","3","1"),
    shopitem('Sicilian Pizza',"60 egp","4","1"),
    shopitem('Greek Pizza',"70 egp","5","1"),];
  static List<shopitem> shopitems2 = [
    shopitem('Apples',"180 egp",'1',"2"),
    shopitem('pears',"180 egp",'2',"2"),
    shopitem('oranges',"180 egp",'3',"2"),
    shopitem('Tomatoes',"850 egp",'4',"2"),
    shopitem('avocados',"97 egp",'5',"2"),];
  static List<shopitem> shopitems3 = [
    shopitem('Broccoli','20egp','1',"3"),
    shopitem('potatos','25egp','2',"3"),
    shopitem('Cauliflower','28egp','3',"3"),
    shopitem('Chokos','20egp','4',"3"),
    shopitem('Okra','20egp','5',"3"),
  ];
//constructor
  shopitem (this._itemn, this._price, this._quantity, this._type);
//
  String get price => _price;

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  String get quantity => _quantity;

  set quantity(String value) {
    _quantity = value;
  }

  set price(String value) {
    _price = value;
  }
}