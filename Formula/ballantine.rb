class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.4-beta4.tar.gz"
  sha256 "c59508a1db24126b1bdb9a6a4097bbae9419969e350c7a54a07540c39b02af03"
  license "MIT"

  depends_on "git"
  depends_on "ruby@3.1"

  def install
    ENV["GEM_HOME"] = libexec
    Dir.chdir "ruby"
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "ballantine*.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
