class DockerGC < FPM::Cookery::Recipe
  name "docker-gc"
  version "0.1.0"
  homepage "https://github.com/spotify/docker-gc"
  maintainer "Simon Rozet <me@simonrozet.com>"
  source "https://github.com/spotify/docker-gc",
    :with => "git",
    :sha  => "e194bc0fec47e55e03d94fb2e5b4260748f2cfae"

  def build
  end

  def install
    bin.install("docker-gc")
    doc("docker-gc").install("README.md")
  end
end
