class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.6/floppy-darwin-arm64.tar.gz"
      sha256 "a8013b478983bd1d86150ad01d93b5f871f412ebdff719d5844593152a4033fc"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.6/floppy-darwin-amd64.tar.gz"
      sha256 "a8013b478983bd1d86150ad01d93b5f871f412ebdff719d5844593152a4033fc"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
