class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.5/floppy-darwin-arm64.tar.gz"
      sha256 "9505665e38baaedbeb343b7a9eba47ff3cd5d30aa74ae6ae36e415bb005d2d41"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.5/floppy-darwin-amd64.tar.gz"
      sha256 "9505665e38baaedbeb343b7a9eba47ff3cd5d30aa74ae6ae36e415bb005d2d41"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
