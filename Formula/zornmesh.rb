class Zornmesh < Formula
  desc "Local-first agent mesh CLI and Model Context Protocol stdio bridge"
  homepage "https://github.com/nebrass/zorn-mesh"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.2/zornmesh-aarch64-apple-darwin.tar.gz"
      sha256 "996d7f8617091e33baaa30ae564274ed590c8c8bd160f99017ff3b803c2806ec"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.2/zornmesh-x86_64-apple-darwin.tar.gz"
      sha256 "08fa1122b31a1e02ebf22f075a5449c6d0f15044a2bcb00fa1af493c7e3803e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.2/zornmesh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "131ab348fe05603b5b3867b5a9ef5c114eac6884f94ae50c74e985f9ae7b0fee"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.2/zornmesh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc88f298dd9c3640530951932319738a6e1a4b78f8d7d9d1658cde5843bfc881"
    end
  end

  def install
    bin.install "zornmesh"
  end

  test do
    assert_match "zornmesh 0.1.2", shell_output("#{bin}/zornmesh --version")
  end
end
