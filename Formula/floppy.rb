class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.4/floppy-darwin-arm64.tar.gz"
      sha256 "1fb072795f7fe706363abe835a220073c9802e83e0c26e28b05f9464682644da"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.4/floppy-darwin-amd64.tar.gz"
      sha256 "1fb072795f7fe706363abe835a220073c9802e83e0c26e28b05f9464682644da"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
