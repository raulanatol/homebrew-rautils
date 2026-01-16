class Rautils < Formula
  desc "macOS utility CLI tool collection"
  homepage "https://github.com/raulanatol/rautils"
  url "https://github.com/raulanatol/rautils/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "280af6540d7cb4fc2c740f5c46d385a0f5291e48a3ec487ead20fbfd3fc12afb"
  version "0.1.2"
  license "MIT"

  def install
    # Install the main executable
    bin.install "bin/rautils"

    # Install the libexec directory with subcommands
    prefix.install "libexec"

    # Install the VERSION file (needed by rautils at runtime)
    prefix.install "VERSION"
  end

  test do
    # Verify the help command works and shows the correct version
    assert_match version.to_s, shell_output("#{bin}/rautils help")
  end
end
