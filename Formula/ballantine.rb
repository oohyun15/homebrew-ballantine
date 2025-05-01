class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "99734928c63d7f829076874bedd07c5b56969b5ca4289188a79d7fbce1ab0631"
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
