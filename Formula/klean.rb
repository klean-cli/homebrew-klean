class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.8.3"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.8.3/klean-v1.8.3-aarch64-apple-darwin.tar.gz"
    sha256 "78a608d3d937c160c2ea8cb13d03d08b8524eefe1bcc163befd39b630f90d680"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.8.3/klean-v1.8.3-x86_64-apple-darwin.tar.gz"
    sha256 "149a24a58d2931748b4763d68482f3a6a3e6df201c6d57aa2b83dbf9aa93dabc"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
