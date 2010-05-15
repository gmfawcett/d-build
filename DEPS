# a simple curl wrapper:
# This would grab the head: 
# git clone git://github.com/gmfawcett/d-play-libcurl.git
# But this grabs a specific 'version' (commit), in this case #e45bc44:
# fixme, is there a less verbose way to do this for git?
git init && git pull git://github.com/gmfawcett/d-play-libcurl.git && git checkout e45bc44

# dranges. note, this will fail on Windows (though not if using cygwin/mingw):
svn checkout http://svn.dsource.org/projects/dranges/trunk && mv trunk dranges

# dcrypt. Note, I had to patch r36 after the clone: see dcrypt.patch.
hg clone -r36 http://hg.dsource.org/projects/dcrypt && cd dcrypt && hg import --no-commit ../../../dcrypt.patch

