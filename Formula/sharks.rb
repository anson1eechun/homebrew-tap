class Sharks < Formula
  desc "ASCII sharks and fish schools in your terminal"
  homepage "https://github.com/anson1eechun/ascii-sharks-term"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.1.0/sharks-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "6fcff4586b00af52d8a292fe3f214fa84f5f2c38b48595ecb0d5739a5f952b0d"
    end
    on_intel do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.1.0/sharks-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "01ec4e516c03ef3b1c5ca6cf4d91dd13a3fd135cdfaee2371ce257f687dec7ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.1.0/sharks-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82cf7336aaeda0748055b48a052d55f3d539c1145a5eeea96ca5f56541f0e210"
    end
    on_intel do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.1.0/sharks-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "09ee2a301e79780a5878b16190d032149331a4e28af4d3d91f1b47e985524088"
    end
  end

  def install
    bin.install "sharks"
  end

  test do
    assert_match "greathammer", shell_output("#{bin}/sharks --list")
  end
end
