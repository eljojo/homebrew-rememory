class Rememory < Formula
  desc "A digital safe with multiple keys, held by people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.19/rememory-darwin-arm64"
      sha256 "ee9eab9047fcc849311d57718b53f938cca246919ec20f20101867801d13b410"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.19/rememory-darwin-amd64"
      sha256 "5f744f364cab6d50574908782af3b2e6e3fa173e0868a91201a832b93f0e78a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.19/rememory-linux-arm64"
      sha256 "ea949bcee2f1ccbd1f31cdb5d606d47b082e864015b0427e2144ac811fc0b8ae"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.19/rememory-linux-amd64"
      sha256 "4712ea0fb2b5b6314f13dee8d56487d406e1b92246ff5f3887ceb6e221c7a088"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
