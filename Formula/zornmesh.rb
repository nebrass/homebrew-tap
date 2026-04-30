class Zornmesh < Formula
  desc "Local-first agent mesh CLI and Model Context Protocol stdio bridge"
  homepage "https://github.com/nebrass/zorn-mesh"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.1/zornmesh-aarch64-apple-darwin.tar.gz"
      sha256 "bc22e51fddf2983aaf83acdba94e8622496dca0fa04201b5568c8a6df138b4fc"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.1/zornmesh-x86_64-apple-darwin.tar.gz"
      sha256 "ef339fbfba74069f8070b2e58a0c544a25470a33398876ce85f9ddeb591e366a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.1/zornmesh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b38c96dd32e6f7f0afdb7f117e79ecd83aa91ca27b283a3cd12429b9eb58b677"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.1/zornmesh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a65180039b1dbfb038f874e472e4e539674d6f7e50de4ae15872a9e71e60823f"
    end
  end

  def install
    bin.install "zornmesh"
  end

  test do
    assert_match "zornmesh 0.1.1", shell_output("#{bin}/zornmesh --version")
  end
end
