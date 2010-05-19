import std.stdio;
import dcollections.ArrayList;

void main() {
  auto aa = new ArrayList!(int);
  for (int i=0; i < 10; i++) {
    aa.add(i*5);
  }
  print(aa, "filled in arraylist");
}

void print(Iterator!(int) s, in char[] message)
{
  writef("%s [", message);
  foreach(i; s)
    writef(" %s", i);
  writeln(" ]");
}