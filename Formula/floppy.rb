class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.10/floppy-darwin-arm64.tar.gz"
      sha256 "d1cd41c498c2f6df8a9c8d441cca64c84a9cf5846e275472c507cb8b3e0110b4"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v0.1.10/floppy-darwin-amd64.tar.gz"
      sha256 "d1cd41c498c2f6df8a9c8d441cca64c84a9cf5846e275472c507cb8b3e0110b4"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
