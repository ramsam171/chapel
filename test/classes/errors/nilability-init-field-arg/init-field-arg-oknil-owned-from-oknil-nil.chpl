//  lhs: owned?  rhs: nil?  ok

class MyClass {  var x: int;  }



record MyRecord {
  var lhs: owned MyClass?;
  proc init(in rhs) where ! isSubtype(rhs.type, MyRecord) {
    lhs = rhs;
  }
}

var myr = new MyRecord(nil);


