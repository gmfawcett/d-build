import std.algorithm	: array;
import std.stdio	: writefln;
import dranges.range2	: asSet;
import fawcett.curl	: Curl;

void main() {
  // curl testing
  auto url = "http://www.digitalmars.com/";
  auto c   = new Curl(url);
  c.perform;

  // dranges testing.
  writefln("dranges test: %s", array(asSet([1,2,3,4,5,4,3,2,1])));
}