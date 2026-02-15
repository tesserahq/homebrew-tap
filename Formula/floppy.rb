class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.1/floppy-darwin-arm64.tar.gz"
      sha256 "58afbab4e36de054e787a7e1eab9ed9a6de40d1b92234d57c635b14c109ebb95"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.1/floppy-darwin-amd64.tar.gz"
      sha256 "58afbab4e36de054e787a7e1eab9ed9a6de40d1b92234d57c635b14c109ebb95"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
