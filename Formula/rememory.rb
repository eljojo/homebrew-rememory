class Rememory < Formula
  desc "A digital safe with multiple keys, held by people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.23"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.23/rememory-darwin-arm64"
      sha256 "f17e72fd732fa77434940d02f506db2cb84700355325faa1ded0adee9e52bdd8"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.23/rememory-darwin-amd64"
      sha256 "dedd0b6f0684818f7c1f6315e565f895644a2e59d3aa1c5572b0496b29328714"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.23/rememory-linux-arm64"
      sha256 "38fe314dcaad9709342ded169db557afc4b6ea495bfbdf01372dc8ca050ca0a7"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.23/rememory-linux-amd64"
      sha256 "8a5d50029225bb1752b5d829c6d4e75d4de5e3a50cc74475a86e2de0ace10cfe"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
