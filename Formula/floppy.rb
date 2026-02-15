class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.7/floppy-darwin-arm64.tar.gz"
      sha256 "b14845099747a97b3145e5c544dca0d276658e2ff8b20d0bcc500474a473007b"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.7/floppy-darwin-amd64.tar.gz"
      sha256 "b14845099747a97b3145e5c544dca0d276658e2ff8b20d0bcc500474a473007b"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
