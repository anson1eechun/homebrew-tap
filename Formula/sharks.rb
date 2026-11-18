class Sharks < Formula
  desc "ASCII sharks and fish schools in your terminal"
  homepage "https://github.com/anson1eechun/ascii-sharks-term"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.3.1/sharks-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "63531aa77ee1f65943609c91dc4ee67bd6d64530c2ddcd57321abd77ea51972a"
    end
    on_intel do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.3.1/sharks-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "7109bb780bc2e039ec89b9768257f831c5879c2c374a36accad807e508387db5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.3.1/sharks-v0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a22ebca0e808fe4369c5701754d16b4bb55ffc378587d89df69d6f12abf125b"
    end
    on_intel do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.3.1/sharks-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c0f0abb43bca2413fa7e54141d662fec05e8bd330e8494225fda8329ac78312"
    end
  end

  def install
    bin.install "sharks"
  end

  test do
    assert_match "greathammer", shell_output("#{bin}/sharks --list")
  end
end
