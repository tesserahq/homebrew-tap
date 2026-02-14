class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.0/floppy-darwin-arm64.tar.gz"
      sha256 "ae4320819942108a8a3de2e9b945cf093adf5766e8454ed5a18edade9e9d0f76"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.0/floppy-darwin-amd64.tar.gz"
      sha256 "ae4320819942108a8a3de2e9b945cf093adf5766e8454ed5a18edade9e9d0f76"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
