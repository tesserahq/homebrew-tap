class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.12/floppy-darwin-arm64.tar.gz"
      sha256 "e0ab00476c365faa61a23da50347d62bcb02b17c678a3bd6f97647cd55b55414"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.12/floppy-darwin-amd64.tar.gz"
      sha256 "e0ab00476c365faa61a23da50347d62bcb02b17c678a3bd6f97647cd55b55414"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
