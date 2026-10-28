class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.5.2"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.5.2/klean-v1.5.2-aarch64-apple-darwin.tar.gz"
    sha256 "9dfbe88c6f62cbb9981fe583f86eaa08112ab2e74558badbcd2fa18af828e122"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.5.2/klean-v1.5.2-x86_64-apple-darwin.tar.gz"
    sha256 "7879929ab68669d83c12c94aa0d98d83d039e0bacd4a74ea93eb874ebc7b2b31"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
