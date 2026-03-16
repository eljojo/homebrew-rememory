class Rememory < Formula
  desc "A digital safe with multiple keys, held by people you trust"
  homepage "https://github.com/eljojo/rememory"
  version "0.0.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.18/rememory-darwin-arm64"
      sha256 "2c9e237f1d68773d242df1c9e2a7968fc58641f5005033678d805c38eb63578c"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.18/rememory-darwin-amd64"
      sha256 "d71590f024863b7bdfeacc148f30ce8ee85f556e69166a966b9c829c630b44be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.18/rememory-linux-arm64"
      sha256 "3d44bd2fe329ae603282a4cd96375cb760814d69bf44e22cea3dfdc0e63f5f16"
    end
    on_intel do
      url "https://github.com/eljojo/rememory/releases/download/v0.0.18/rememory-linux-amd64"
      sha256 "7c4df1208291828799ba99dee466555a9badf29b9d330c06de76481e494dc418"
    end
  end

  def install
    bin.install Dir.glob("rememory-*").first => "rememory"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rememory --version")
  end
end
