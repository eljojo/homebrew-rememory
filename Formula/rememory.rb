class Rememory < Formula
  desc "Encrypt secrets and split them among people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.15/rememory-darwin-arm64"
      sha256 "3018aff839f3d4a2ef31f8833351bf78a0de41599fafa6997cb1137f2a3dd431"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.15/rememory-darwin-amd64"
      sha256 "2a88729397c798b5701243e664bcba80b1892a9505bccfd36ba8c07c10dbe1c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.15/rememory-linux-arm64"
      sha256 "6ef85c39ecbcb1278a592565909048f16d8a891322c7d04821bf4f1ebef55d90"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.15/rememory-linux-amd64"
      sha256 "a5d91508cb6bf32a620d23d450cb734e2ce55302e276f3812aa01a29df2ec301"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
