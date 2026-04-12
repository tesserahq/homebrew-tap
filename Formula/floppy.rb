class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version ".0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.21/floppy-darwin-arm64.tar.gz"
      sha256 "888cda1e301fa329b01e0e914c3a401d0122053999fc8b9db21190f4bb4e8170"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.21/floppy-darwin-amd64.tar.gz"
      sha256 "888cda1e301fa329b01e0e914c3a401d0122053999fc8b9db21190f4bb4e8170"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
