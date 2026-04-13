class Rememory < Formula
  desc "A digital safe with multiple keys, held by people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.21/rememory-darwin-arm64"
      sha256 "3529f366035b988a4b52f8c96dd995ec0da1b6afc9f2685403ee44eb3a63b8aa"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.21/rememory-darwin-amd64"
      sha256 "e915bf24ba61aa40f49342093b7cc30edf598b0fd5ec3a69f86595415b41301e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.21/rememory-linux-arm64"
      sha256 "4ed419c0ed88b62ee5dbe27285ca2833f7468a8b9ae32488a1ea6b5ec2b92033"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.21/rememory-linux-amd64"
      sha256 "43b9a983a5dfe8cea4e718f2e794237963f8f5f8f66d344d6259ca784d74ba08"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
