class Rememory < Formula
  desc "Encrypt secrets and split them among people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.10/rememory-darwin-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.10/rememory-darwin-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.10/rememory-linux-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.10/rememory-linux-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
