class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "ba53e5003e42f4c17ae2ebbb6e35587ec32cf97fb8a147001c2ceaa3ad6f7e49"
  license "MIT"

  def install
    bin.install "ballantine.sh" => "ballantine"
  end
end
