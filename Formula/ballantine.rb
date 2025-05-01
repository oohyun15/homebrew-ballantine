class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.5-rc2.tar.gz"
  sha256 "a5055751c4ce8ab03efb0ca5d11501b33a544e68c241007f97f9a79590a32c88"
  license "MIT"

  depends_on "git"
  depends_on "ruby@3.4"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "ballantine*.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
