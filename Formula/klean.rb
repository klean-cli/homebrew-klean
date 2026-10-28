class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.4.0"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.4.0/klean-v1.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "4acd6513dcb0c74ad9613572039d8f08fcbabbb8a104b984a98f5727a022ab1f"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.4.0/klean-v1.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "2c1ebf27f50d661730176bb69fda747c9cc81f7020dbe1f2ac56870054535586"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
