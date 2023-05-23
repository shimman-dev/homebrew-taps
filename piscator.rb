class Piscator < Formula
  desc "My useful Go-lang command line tool"
  homepage "https://github.com/shimman-dev/piscator"
  version "1.1.0"
  license "GPLv3"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/shimman-dev/piscator/releases/download/v#{version}/piscator-v#{version}-darwin-amd64.tar.gz"
      sha256 "bc0bdacad4957e1342c49dc98a38fbbf9fd4c1920d500b057bdb20cf94bae6e0"
    elsif Hardware::CPU.arm?
      url "https://github.com/shimman-dev/piscator/releases/download/v#{version}/piscator-v#{version}-darwin-arm64.tar.gz"
      sha256 "487ea16b21dce4d94122910025b1747854237dd12a26fcaaa027f66e4fb8efeb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/shimman-dev/piscator/releases/download/v#{version}/piscator-v#{version}-linux-amd64.tar.gz"
      sha256 "1f96684513f53acb4fe15d8ec6e30079683d6f612778864e70284070d1368545"
    elsif Hardware::CPU.arm?
      url "https://github.com/shimman-dev/piscator/releases/download/v#{version}/piscator-v#{version}-linux-arm64.tar.gz"
      sha256 "1fc0094647b2b564eb4c491a375e725ec29d20e59a8431ca99f0dd956c6a90b4"
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

