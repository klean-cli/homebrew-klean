class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  version "1.4.0"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.4.0/klean-v1.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "45d293bc3faf4accd7bccf97aad7b7172fb81bc2ee164454743c9be46da57053"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.4.0/klean-v1.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "04e624e815c27fc317b1358168049aefbb969fa9f93b8cb93856e8119582e711"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klean --version")
  end
end
