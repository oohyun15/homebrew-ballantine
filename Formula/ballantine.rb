class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.4-beta1.tar.gz"
  sha256 "754ab3c8921bee078926a271d5e2595fcd034cd2572ed76ecc79679de0b4424f"
  license "MIT"

  depends_on "git"
  depends_on "ruby@3.1"

  def install
    ENV["GEM_HOME"] = libexec
    Dir.chdir "ruby"
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "#{name}-#{version}.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
