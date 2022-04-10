class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "facc5b40590d40399bb9112c7dab09f854b9bc3a4fcc147c1615fc8514c630b5"
  license "MIT"

  def install
    bin.install "ballantine.sh" => "ballantine"
  end
end
