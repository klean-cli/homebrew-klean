class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.8.0"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.8.0/klean-v1.8.0-aarch64-apple-darwin.tar.gz"
    sha256 "76284d864319b04e75035edefd250e9c9184fef927142379251aa3d7f25cb45d"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.8.0/klean-v1.8.0-x86_64-apple-darwin.tar.gz"
    sha256 "002c460417c24789a956ba8b466e510cdfc54259806e64af133f308f660fb04a"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
