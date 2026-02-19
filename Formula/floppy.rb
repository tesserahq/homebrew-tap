class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.9/floppy-darwin-arm64.tar.gz"
      sha256 "b2c45f5afa08eef0dbb5330d3f1edc0b2f8af64c501d4c877f218536bd68c15d"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.9/floppy-darwin-amd64.tar.gz"
      sha256 "b2c45f5afa08eef0dbb5330d3f1edc0b2f8af64c501d4c877f218536bd68c15d"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
