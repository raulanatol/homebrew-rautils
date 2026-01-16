class Rautils < Formula
  desc "A collection of utility commands for macOS"
  homepage "https://github.com/raulanatol/rautils"
  url "https://github.com/raulanatol/rautils/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "cae3ec33ed5dfbaa870493d4991164d398c2fdeec6680f237eabce50292365aa"
  license "MIT"

  def install
    bin.install "bin/rautils"
    libexec.install Dir["libexec/*"]
    cp "VERSION", prefix/"VERSION"
  end

  test do
    assert_match /rautils version/, shell_output("#{bin}/rautils help")
  end
end
