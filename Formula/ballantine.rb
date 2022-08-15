class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "37379de44a92dc20ebc4523ced14bfaa1c1a872afefe1491feb2e7396b8fa0f3"
  license "MIT"

  depends_on "git"
  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "ruby/#{name}.gemspec"
    system "gem", "install", "ruby/#{name}-#{version}.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
