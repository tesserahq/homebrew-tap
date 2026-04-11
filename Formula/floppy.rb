class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version ".0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.18/floppy-darwin-arm64.tar.gz"
      sha256 "d86934529ecaf462d901234a0431704092dff521f5901c24e9138b7de47d62a5"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.18/floppy-darwin-amd64.tar.gz"
      sha256 "d86934529ecaf462d901234a0431704092dff521f5901c24e9138b7de47d62a5"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
