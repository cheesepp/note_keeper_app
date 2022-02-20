class Note {
  int? _id = 0;
  String? _title = '';
  String? _description = '';
  String? _date = '';
  int? _priority = 0;

  Note(this._title, this._date, this._priority, [this._description]);

  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get date => _date;
  int? get priority => _priority;

  set title(String? newtitle) {
    if (newtitle!.length <= 255) this._title = newtitle;
  }

  set description(String? newdescription) {
    if (newdescription!.length <= 255) this._description = newdescription;
  }

  set priority(int? newPriority) {
    if (newPriority! >= 1 && newPriority <= 2) this._priority = newPriority;
  }

  set date(String? newdate) => this._date = newdate;
  // convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['id'] = _id ?? null;
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
  }

  //Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}
