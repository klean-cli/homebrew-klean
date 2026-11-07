class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.8.2"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.8.2/klean-v1.8.2-aarch64-apple-darwin.tar.gz"
    sha256 "c125ac298a76e0209e6f224c713e1ddc9ff43a4f982733bd66a7e200d9d732fb"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.8.2/klean-v1.8.2-x86_64-apple-darwin.tar.gz"
    sha256 "eb24292dd0c3c3879912d435a8a2596b2f5e7487883d4045746976e455340b09"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
