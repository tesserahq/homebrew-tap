class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.2/floppy-darwin-arm64.tar.gz"
      sha256 "85cea451eec057fa7e734548ca3ba6d779ed5836a3f9de14b8394575ef0d7d8e"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.2/floppy-darwin-amd64.tar.gz"
      sha256 "85cea451eec057fa7e734548ca3ba6d779ed5836a3f9de14b8394575ef0d7d8e"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
