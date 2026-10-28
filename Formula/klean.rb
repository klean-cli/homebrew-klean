class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.5.2"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.5.2/klean-v1.5.2-aarch64-apple-darwin.tar.gz"
    sha256 "5f25ef302dcdf30cc0b30c4e7d0274ab5ac11001e8a707706b27ca0ab01ccbd2"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.5.2/klean-v1.5.2-x86_64-apple-darwin.tar.gz"
    sha256 "0740a6f5f984d024126b83d9316dec2c8cb200d540fc0c62336ae5c163d5780a"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
