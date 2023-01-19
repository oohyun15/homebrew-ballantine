class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.4-beta1.tar.gz"
  sha256 "277864ee68449f254fb02582488a93f45e8020798299c4f7925ca894bc57d095"
  license "MIT"

  depends_on "git"
  depends_on "ruby@3.1"

  def install
    ENV["GEM_HOME"] = libexec
    Dir.chdir "ruby"
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "ballantine-0.1.4.pre.beta1.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
