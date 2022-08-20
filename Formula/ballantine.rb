class Ballantine < Formula
  desc "Describe your commits"
  homepage "https://github.com/oohyun15/ballantine"
  url "https://github.com/oohyun15/ballantine/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "b03753ddb7c4e94fbb50ceeeda59c8fc80b89ed20e58f22c61e151e40a77e339"
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
