class Rememory < Formula
  desc "Encrypt secrets and split them among people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.13/rememory-darwin-arm64"
      sha256 "2497c15d6f5bfa9311214f01ad98fe84ae26f4759a341cd679c11a9bb7a95caf"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.13/rememory-darwin-amd64"
      sha256 "d950e32c0f0c5b5855d8f6f6ef1083fa931ed725e0692fd96f74fd4781bb0d1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.13/rememory-linux-arm64"
      sha256 "0adb5ac8d507ef13d8150dbf7f6f93e08bfd2b7c4573bb588231c415f78558cb"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.13/rememory-linux-amd64"
      sha256 "7a54b0cda558a5bea466b042aa36f7bb6bb9895e833024bee97d36c2d44934b7"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
