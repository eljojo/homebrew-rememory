class Rememory < Formula
  desc "Encrypt secrets and split them among people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.16/rememory-darwin-arm64"
      sha256 "2eb39e895e40966e4fdb89ca42fd65b71166d2ece29e10cfa427685f032fa8a6"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.16/rememory-darwin-amd64"
      sha256 "84cc1e7499b5726db361445abdeaacb6d8f6533eba2c47a304c6b18f82376061"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.16/rememory-linux-arm64"
      sha256 "ebf769c851c0707c342bc1b95af3f43cb21f9f75cef7dbef6e9b0ab334c8f5e9"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.16/rememory-linux-amd64"
      sha256 "b70dea0909c0809d6092082cea79b8bdc63f058d7431fc7b917138140bb40b27"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
