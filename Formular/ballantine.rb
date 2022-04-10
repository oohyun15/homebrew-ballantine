class Ballantine < Formula
  desc "describe your commits"
  homepage ""
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "441bbbb719ef1e6eb078cdb7d4c89413b3a0ac0e2625e551f81c02ea15aec113"
  license "MIT"
  version "0.0.1"

  def install
    bin.install "ballantine.sh"
  end
end
