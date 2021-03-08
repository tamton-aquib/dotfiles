set -x LANG "en_US.utf8"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -x JAVA_HOME /usr/lib/jvm/jdk-11.0.10/
# set -x JAVA_OPTS '-XX:+IgnoreUnrecognizedVMOptions'

set -x XCOMPOSEFILE /tmp/compose
set -x JAVA_OPTS '-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'

