class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.6.0"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.6.0/klean-v1.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "05080b32e12414ddcf19e2e078b44a20f7174b4c403f2c58ad29185c3500414a"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.6.0/klean-v1.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "6f359014aecf9bf51a76cd81e1d6d8278ac290248df485e665096137598e064d"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
