class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.17/floppy-darwin-arm64.tar.gz"
      sha256 "176cfb684f037e2eefe8c23179c513d7b41b4b2a962d3867986fd8b760a6ee5d"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.17/floppy-darwin-amd64.tar.gz"
      sha256 "176cfb684f037e2eefe8c23179c513d7b41b4b2a962d3867986fd8b760a6ee5d"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
