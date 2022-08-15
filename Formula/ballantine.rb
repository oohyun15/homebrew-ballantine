class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "6b39608fc4a665087c8d1eda69f87678ad8bce38ad8e0cdbe5aeff7f24156002"
  license "MIT"

  uses_from_macos "ruby", since: :catalina
  depends_on "git"

  def install
    ENV["GEM_HOME"] = libexec
    Dir.chdir "ruby"
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "#{name}-#{version}.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
