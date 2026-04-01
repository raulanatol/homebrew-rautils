class Rautils < Formula
  desc "macOS utility CLI tool collection"
  homepage "https://github.com/raulanatol/rautils"
  url "https://github.com/raulanatol/rautils/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d6b123dee4dffa387fa27e72894b7a588876ddfdf5ad9afa2282ae06344c50e1"
  version "0.3.0"
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
