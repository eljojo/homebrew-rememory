class Rememory < Formula
  desc "A digital safe with multiple keys, held by people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.22"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.22/rememory-darwin-arm64"
      sha256 "4d8c45bbebbdef473e16bb705ff3b2179018c91dcb0df2c65bdef83ad63cb5d6"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.22/rememory-darwin-amd64"
      sha256 "c1cef80072c871d557fcdc48f42b2cdda600024dff7b1ff20038b70cf23a6a57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.22/rememory-linux-arm64"
      sha256 "219f8ded72a011bc71a6d35a77e95682be57bedf307dbdaf9e976b28043fcf67"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.22/rememory-linux-amd64"
      sha256 "5248c0303ec59f0c935eee0cea78aafb6a954ff394e1ba3514d7e95bfe4de224"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
