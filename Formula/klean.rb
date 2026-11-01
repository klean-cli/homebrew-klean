class Klean < Formula
  desc "Safe, efficient CLI for cleaning development environments"
  homepage "https://github.com/danil0ws/klean"
  # Asset names contain the target triple, so set the version explicitly.
  version "1.7.0"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/danil0ws/klean/releases/download/v1.7.0/klean-v1.7.0-aarch64-apple-darwin.tar.gz"
    sha256 "e732d67490a5c0296c7fe9e75def0026cf6e9cc8ab48a7ba4cfd1fe52f786a10"
  else
    url "https://github.com/danil0ws/klean/releases/download/v1.7.0/klean-v1.7.0-x86_64-apple-darwin.tar.gz"
    sha256 "d7068532d9652cdad46f3069c97fc8b7e4db62cce3ca0b811f733a6f9f603edd"
  end

  depends_on :macos

  def install
    bin.install "klean"
  end

  test do
    assert_match "klean", shell_output("#{bin}/klean --version")
  end
end
