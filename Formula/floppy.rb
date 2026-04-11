class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version ".0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.20/floppy-darwin-arm64.tar.gz"
      sha256 "535f2ad76a87a31f5153c142af471c7030c90c12e89bf8e9e480630158b44a32"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.20/floppy-darwin-amd64.tar.gz"
      sha256 "535f2ad76a87a31f5153c142af471c7030c90c12e89bf8e9e480630158b44a32"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
