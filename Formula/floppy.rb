class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version ".0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.19/floppy-darwin-arm64.tar.gz"
      sha256 "050b2d5812cb438fb013af14c3c2b64c19b70e4b2cd854bccf7b1489f20d733c"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.19/floppy-darwin-amd64.tar.gz"
      sha256 "050b2d5812cb438fb013af14c3c2b64c19b70e4b2cd854bccf7b1489f20d733c"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
