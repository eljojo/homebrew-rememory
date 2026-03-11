class Rememory < Formula
  desc "A digital safe with multiple keys, held by people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.17/rememory-darwin-arm64"
      sha256 "a250d0625556006799bf350e5071d355c5889e4f51fc3aefed672ef05934bec8"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.17/rememory-darwin-amd64"
      sha256 "3df5808894305f846a7303ab9a9fe4c026bb7605dfb7611ed8ce78db693551f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.17/rememory-linux-arm64"
      sha256 "7d4219a8f7b4503b88c463867b7880ac11dc4739338c7b65b08398c03763c844"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.17/rememory-linux-amd64"
      sha256 "01093ac1d0b4e14325033c40ee9e6048d63a8a353fcf67773f127f116dc4102f"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
