class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "30077bd05c334f4ffbe4341d393d2316fb64f2d4c96f1f0971149c7f9108b0e6"
  license "MIT"

  depends_on "git"
  depends_on "ruby@3.1"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "ballantine*.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
