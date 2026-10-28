class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.5.0"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.5.0/klean-v1.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "7eac390b56caf6aa1d1e4854389df8e4bb7f3f7aea24b4d8ce762e1b87c7de83"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.5.0/klean-v1.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "bb50c4d35a2dd5498764eff697b0fcc46b4174db0e1cfa845cf2fb94bc83f6fc"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
