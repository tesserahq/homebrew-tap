class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.16/floppy-darwin-arm64.tar.gz"
      sha256 "9f3b05c21be8776acdb3c2116d22c4314d024ff3b3af02bc3364dfe03e252fbc"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.16/floppy-darwin-amd64.tar.gz"
      sha256 "9f3b05c21be8776acdb3c2116d22c4314d024ff3b3af02bc3364dfe03e252fbc"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
