class Floppy < Formula
  desc "Floppy service orchestration CLI"
  homepage "https://github.com/tesserahq/floppy-go"
  version ".0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.22/floppy-darwin-arm64.tar.gz"
      sha256 "19a1b568b2e451fefcfa80ff540f25a1902b018c21c08175edf9457967ea7464"
    else
      url "https://github.com/tesserahq/floppy-go/releases/download/v.0.1.22/floppy-darwin-amd64.tar.gz"
      sha256 "19a1b568b2e451fefcfa80ff540f25a1902b018c21c08175edf9457967ea7464"
    end
  end

  def install
    bin.install "floppy"
  end

  test do
    assert_match "floppy version", shell_output("#{bin}/floppy version")
  end
end
