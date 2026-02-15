class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.3/floppy-darwin-arm64.tar.gz"
      sha256 "77297a94e5b88000f5749d2e90ce43a11457cf29bf17bb05e8ea797f5c295a33"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.3/floppy-darwin-amd64.tar.gz"
      sha256 "77297a94e5b88000f5749d2e90ce43a11457cf29bf17bb05e8ea797f5c295a33"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
