class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e6f5835480415647ec14bd9ec7a2e0322f47800cb274dbc66c7aeb39872e552c"
  license "MIT"

  def install
    bin.install "ruby/ballantine" => "ballantine"
  end
end
