class ACTS < FPM::Cookery::Recipe
  name "acts"
  version "1.2"
  revision "20160119"
  homepage "https://github.com/alexjurkiewicz/acts"
  maintainer "Simon Rozet <me@simonrozet.com>"
  source "https://github.com/alexjurkiewicz/acts",
    :with => "git",
    :sha  => "2d707f30322f9a06fd9a1332c1c0664a62d3f67d"

  arch "all"
  depends "bsdutils", "coreutils"
  config_files "/etc/acts.conf"
  section "utils"
  license "public-domain"

  def build
  end

  def install
    bin.install("acts")
    etc.install("acts.conf.sample", "acts.conf")
    doc("acts").install("README.md")
    doc("acts").install("contrib")
  end
end
