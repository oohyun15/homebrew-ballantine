class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "9ecc249ab6ae5aefde291b4424cfdca4c090da512b2c27518c9ab523db69c0d6"
  license "MIT"

  def install
    bin.install "ballantine.sh" => "ballantine"
  end
end
