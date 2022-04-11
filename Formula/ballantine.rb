class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "8a433e6459fba394c13fd7ce5cbc3602171179b747eb75c51183b7a0555a9784"
  license "MIT"

  def install
    bin.install "ballantine.sh" => "ballantine"
  end
end
