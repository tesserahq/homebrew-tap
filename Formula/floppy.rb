class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.11/floppy-darwin-arm64.tar.gz"
      sha256 "602153485603dc908a54cafe9af6f38eccf2ba5a6ba33acfc6c36aa84fe5c030"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.11/floppy-darwin-amd64.tar.gz"
      sha256 "602153485603dc908a54cafe9af6f38eccf2ba5a6ba33acfc6c36aa84fe5c030"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
