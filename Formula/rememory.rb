class Rememory < Formula
  desc "Encrypt secrets and split them among people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.12/rememory-darwin-arm64"
      sha256 "d0c317bb01ec9f83e8d2fc5c8486fc0cbb30ca6d2c964667d9e6e19f6116624f"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.12/rememory-darwin-amd64"
      sha256 "22106e9f11e8f133aa9b9939b693e2e12794cb0d7f00305a27d6e85e40063e37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.12/rememory-linux-arm64"
      sha256 "e017f35af0652c75e4ed48ce6a2cdda9eea76b14aba903acbdc99d3c61aa6ccf"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.12/rememory-linux-amd64"
      sha256 "7bd8aecb7ab564cab619c0c2e984b6b380e0e488fd81be8a80088bb83f6cf0f9"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
