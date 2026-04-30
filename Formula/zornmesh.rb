class Zornmesh < Formula
  desc "Local-first agent mesh CLI and Model Context Protocol stdio bridge"
  homepage "https://github.com/nebrass/zorn-mesh"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.3/zornmesh-aarch64-apple-darwin.tar.gz"
      sha256 "ccc1926dd7ba21ffb0c75adf95459eaee5dddd55f91722afdf515a3dfe20eaf1"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.3/zornmesh-x86_64-apple-darwin.tar.gz"
      sha256 "23261e44d119fe7dd879a17d1cbbbf7d511eb57ca9e43664e7972fe8e6136119"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.3/zornmesh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a33d68520ce749b3c8c97c0c391c1b39e7228c53b1011999e7620c297bbeed4"
    else
      url "https://github.com/nebrass/zorn-mesh/releases/download/v0.1.3/zornmesh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74e0998929405375fafc5e2b1468af4a3733229e411b7e89d185441492456dda"
    end
  end

  def install
    bin.install "zornmesh"
  end

  test do
    assert_match "zornmesh 0.1.3", shell_output("#{bin}/zornmesh --version")
  end
end
