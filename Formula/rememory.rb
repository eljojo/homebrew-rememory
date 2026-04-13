class Rememory < Formula
  desc "A digital safe with multiple keys, held by people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.20"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.20/rememory-darwin-arm64"
      sha256 "cdba7d26370894fce7611d385413857bc0ce731daa89a3aa81d5e8f841fbe0b6"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.20/rememory-darwin-amd64"
      sha256 "91f1b564ff005573b02c5d6730f2a87cbbd7a499b1906e6f1ed03b843d7ec264"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.20/rememory-linux-arm64"
      sha256 "7ad4647b720a8a4a53f4a6c03e1b56c80819cb703c402cf0723867c3ccee5ed0"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.20/rememory-linux-amd64"
      sha256 "8bd0dd3848d167ff6fdf731e971d93e079b76b7b6fc007b42a8fd4423f2abbce"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
