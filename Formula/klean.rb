class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.5.2"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.5.2/klean-v1.5.2-aarch64-apple-darwin.tar.gz"
    sha256 "b0d5395737d35aa31b59ee4cefaf34154021ed1728fe502954f50e177630436e"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.5.2/klean-v1.5.2-x86_64-apple-darwin.tar.gz"
    sha256 "f558532f49394996c33665f15745904d9c73335f282c1bac2e6e23bd41982e8b"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
