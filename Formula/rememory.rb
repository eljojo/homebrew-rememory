class Rememory < Formula
  desc "Encrypt secrets and split them among people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.11/rememory-darwin-arm64"
      sha256 "f5e552ec908a6a9bf648801e3c2e7f68956096a1ab5d22ad0e605588c951c33e"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.11/rememory-darwin-amd64"
      sha256 "5671f4904e57d0d81caffa5bede477bcc03662c870956ed398af5b3e94578a73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.11/rememory-linux-arm64"
      sha256 "9ceb7cbb4839182cb0acb942e4c9d34edc7dbdc3c1e9d4eb800a5e2f63780e06"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.11/rememory-linux-amd64"
      sha256 "75263f844503a0dacd95dbb556011b6f2ade42283f9ad4c0e44db3932741c159"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
