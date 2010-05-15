import std.algorithm	: array;
import std.stdio	: writefln;
import dranges.range2	: asSet;
import fawcett.curl	: Curl;
import dcrypt.crypto.hashes.SHA256 : SHA256;

void main() {
  // curl testing
  auto url = "http://www.digitalmars.com/";
  auto c   = new Curl(url);
  c.perform;

  // dranges testing.
  writefln("dranges test: %s", array(asSet([1,2,3,4,5,4,3,2,1])));

  // dcrypt testing.
  SHA256 h = new SHA256();
  h.update("hello");
  writefln("dcrypt test:  %s", h.hexDigest());
  writefln("should print: %s", "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824");
}