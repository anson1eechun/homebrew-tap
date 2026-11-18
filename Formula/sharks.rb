class Sharks < Formula
  desc "ASCII sharks and fish schools in your terminal"
  homepage "https://github.com/anson1eechun/ascii-sharks-term"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.3.0/sharks-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c84c194cd4d5cff34d9bc59bb26a3dcbb3b861099eec2ac56453edaa90f06572"
    end
    on_intel do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.3.0/sharks-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "e63740652715ec805d7f8217bbb37761d37f792b86b92b25a7d158573310270c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.3.0/sharks-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19257a5da49f3955de675b614915319f6bf6320b3f62da610c80b7342bf44c94"
    end
    on_intel do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.3.0/sharks-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "454ac809e4885b30639f39aed02f25f6d1fa30bfcb6306789ad7a29cb5d8b43e"
    end
  end

  def install
    bin.install "sharks"
  end

  test do
    assert_match "greathammer", shell_output("#{bin}/sharks --list")
  end
end
