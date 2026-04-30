class Zornmesh < Formula
  desc "Local-first agent mesh CLI and Model Context Protocol stdio bridge"
  homepage "https://github.com/nebrass/zorn-mesh"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.2.1/zornmesh-aarch64-apple-darwin.tar.gz"
      sha256 "1b6b52cd47bc6b41b262a526208eb99bc7be28138fdf47bd0cfb1e1a383c0531"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.2.1/zornmesh-x86_64-apple-darwin.tar.gz"
      sha256 "53111ac411422c73eafd664b82366485c3fa378c2547744ddff7b9abd2bf8996"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.2.1/zornmesh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5246cefa7112421fa5c436e71aeff8f4971f70bd7ac1004b873288d0de27156"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.2.1/zornmesh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "935f4131d589322bf95794ea9a6077c28202aa4dc3db7c724c951f75e2ee7386"
    end
  end

  def install
    bin.install "zornmesh"
  end

  test do
    assert_match "zornmesh 0.2.1", shell_output("#{bin}/zornmesh --version")
  end
end
