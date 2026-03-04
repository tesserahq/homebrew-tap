class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.14/floppy-darwin-arm64.tar.gz"
      sha256 "3984642f04fe1c1079ffd7b1513d0c60b838937d472d6ca8f2a7639e60e2433d"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.14/floppy-darwin-amd64.tar.gz"
      sha256 "3984642f04fe1c1079ffd7b1513d0c60b838937d472d6ca8f2a7639e60e2433d"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
