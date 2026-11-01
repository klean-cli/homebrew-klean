class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.7.1"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.7.1/klean-v1.7.1-aarch64-apple-darwin.tar.gz"
    sha256 "d7cb5b96450ae4c394b64ced833523240d44fc1f2685b3d4fba37e42f5b91030"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.7.1/klean-v1.7.1-x86_64-apple-darwin.tar.gz"
    sha256 "0794d7b4ace60bd841e7c0025f6026cdbd7e138ae7409cdb8869e3ec4f8727a2"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
