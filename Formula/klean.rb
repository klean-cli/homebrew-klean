class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.5.3"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.5.3/klean-v1.5.3-aarch64-apple-darwin.tar.gz"
    sha256 "d00d8b5bd24b55f6e94139c2463f95c31850d1704149e1a0bd4f3903a0e61f72"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.5.3/klean-v1.5.3-x86_64-apple-darwin.tar.gz"
    sha256 "20a318a1f55925457b0715bd58eddac698a479a0b56def2cf2eb259eece9d3f5"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
