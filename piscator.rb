class Piscator < Formula
  desc "A tool for cloning GitHub repos"
  homepage "https://github.com/shimman-dev/piscator"
  version "1.2.0"
  license "GPLv3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/shimman-dev/piscator/releases/download/v#{version}/piscator-v#{version}-darwin-amd64.tar.gz"
      sha256 "3148f9c19851afffbd241d7260f75aef471e9653685c57cd2176761db7512bca"
    elsif Hardware::CPU.arm?
      url "https://github.com/shimman-dev/piscator/releases/download/v#{version}/piscator-v#{version}-darwin-arm64.tar.gz"
      sha256 "4fd28728fe7b702caadca01ca28768cded2d74511c9147173b1b14727d48a7d6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/shimman-dev/piscator/releases/download/v#{version}/piscator-v#{version}-linux-amd64.tar.gz"
      sha256 "cc155a060c4cdf306a6af8a7ebec05a67219208e80128c9fae051e8b999b39ac"
    elsif Hardware::CPU.arm?
      url "https://github.com/shimman-dev/piscator/releases/download/v#{version}/piscator-v#{version}-linux-arm64.tar.gz"
      sha256 "85036a44f427a1b0fa477eb7d1ad34e2f42d156b137d3941b152778a9a995b6c"
    end
  end

  conflicts_with "piscator"

  def install
    bin.install "piscator"
  end

  test do
    system "#{bin}/piscator", "--version"
  end
end

