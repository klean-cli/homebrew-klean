class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.8.1"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.8.1/klean-v1.8.1-aarch64-apple-darwin.tar.gz"
    sha256 "04458ccba4981d613013c7804b4b85b22253fd5a9742c3d60698139ba6a74dda"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.8.1/klean-v1.8.1-x86_64-apple-darwin.tar.gz"
    sha256 "eda6d148291e56084c79d46111c87e4719f56454f306b54a052196c2f260af75"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
