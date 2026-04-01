class Rautils < Formula
  desc "macOS utility CLI tool collection"
  homepage "https://github.com/raulanatol/rautils"
  url "https://github.com/raulanatol/rautils/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e17c1b5eb2756e2187f28623ed1d4489b36f20dd216f5f2e7fa2dfef640e7630"
  version "0.2.0"
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
