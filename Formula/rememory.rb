class Rememory < Formula
  desc "Encrypt secrets and split them among people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.14/rememory-darwin-arm64"
      sha256 "880b990068d76856151dfb18607c8b1b6c7b8022f2c9345889686f4f8cfbc568"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.14/rememory-darwin-amd64"
      sha256 "4a09b8489e318d4a0a820041ab030c169d2f3ccda291c22eebd20fddc8e15b85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.14/rememory-linux-arm64"
      sha256 "a0faec6696e957eb401ec11ac60456e5dd3559a6b44f8fcd24f132e584124208"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.14/rememory-linux-amd64"
      sha256 "98f27ae638fb5a55a1034a9c233936b2bb85e4c2a4620040efa35e6bd9342759"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
