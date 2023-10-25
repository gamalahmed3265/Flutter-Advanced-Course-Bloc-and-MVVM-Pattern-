class MySingleTon {
  MySingleTon._();

  static final MySingleTon _inst = MySingleTon._();

  factory MySingleTon() => _inst;
}
