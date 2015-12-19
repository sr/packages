class Tarsnap < FPM::Cookery::Recipe
  source "https://www.tarsnap.com/download/tarsnap-autoconf-1.0.36.1.tgz"
  homepage "https://www.tarsnap.com/"
  sha256 "a2909e01e2f983179d63ef2094c42102c92c716032864e66ef25ae341ea28690"
  name "tarsnap"
  version "1.0.36.1"
  license "Tarsnap License"
  section "tools"
  maintainer "Simon Rozet <me@simonrozet.com>"
  description "Tarsnap is a secure online backup service
for BSD, Linux, OS X, Minix, OpenIndiana, Cygwin and probably many
other UNIX-like operating systems. The Tarsnap client code provides
a flexible and powerful command-line interface which can be used
directly or via shell scripts."

  build_depends \
    "gcc",
    "make",
    "glibc-devel",
    "openssl-devel",
    "zlib-devel",
    "e2fsprogs-devel"

  def build
    configure \
      :prefix => prefix,
      :"with-bash-completion-dir" => true
    make
  end

  def install
    make :install, "DESTDIR" => destdir
  end
end
