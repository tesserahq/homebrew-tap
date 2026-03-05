class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.15/floppy-darwin-arm64.tar.gz"
      sha256 "c0dedab9c66a7131d6789c7691f001385b019bac2fba194b05c3ef145e09aad2"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.15/floppy-darwin-amd64.tar.gz"
      sha256 "c0dedab9c66a7131d6789c7691f001385b019bac2fba194b05c3ef145e09aad2"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
