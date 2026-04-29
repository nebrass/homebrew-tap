class Zornmesh < Formula
  desc "Local-first agent mesh CLI and Model Context Protocol stdio bridge"
  homepage "https://github.com/nebrass/zorn-mesh"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.0/zornmesh-aarch64-apple-darwin.tar.gz"
      sha256 "8c15cc714d702ca56d38607af56c5008e51326544aef226dfcc12e8ce9e4f38a"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.0/zornmesh-x86_64-apple-darwin.tar.gz"
      sha256 "ab1303521697e57468d187d16edfd86702764aae93068202ce850236badb1bf1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.0/zornmesh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "292d95c08fe1be7937ceec0f0ed3d11049522e56144e5c41cfe7136220ef391a"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.0/zornmesh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcd97870d3517630b24d95cf49ea0de8a7af0835854d37f621cc500a60a9ca15"
    end
  end

  def install
    bin.install "zornmesh"
  end

  test do
    assert_match "zornmesh 0.1.0", shell_output("#{bin}/zornmesh --version")
  end
end
