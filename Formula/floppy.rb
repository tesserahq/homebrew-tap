class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version ".0.1.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.23/floppy-darwin-arm64.tar.gz"
      sha256 "9fcbc0ce8fb93a10734a4536c497bae643eedfc186fc2e3afce864ab48a1b86c"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.23/floppy-darwin-amd64.tar.gz"
      sha256 "9fcbc0ce8fb93a10734a4536c497bae643eedfc186fc2e3afce864ab48a1b86c"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
