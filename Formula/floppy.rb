class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.13/floppy-darwin-arm64.tar.gz"
      sha256 "4607eba1342163789ec273eca4e76dbff4d9f233f7898d97594895dfb9d0dd4b"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.13/floppy-darwin-amd64.tar.gz"
      sha256 "4607eba1342163789ec273eca4e76dbff4d9f233f7898d97594895dfb9d0dd4b"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
