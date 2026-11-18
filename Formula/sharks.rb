class Sharks < Formula
  desc "ASCII sharks and fish schools in your terminal"
  homepage "https://github.com/anson1eechun/ascii-sharks-term"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.2.0/sharks-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7696dc440ee56395e056b1f6173ed86084f7a49645d0013cdbad1de7dd22b261"
    end
    on_intel do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.2.0/sharks-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a5ba6b9122176646de9a45c5ddf82c9aef286b270b5e51f375e5f97deb5292e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.2.0/sharks-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "18f398fe9074147ade97313b887cec5720147b4b85461d40e0d21fbf8bdeaf45"
    end
    on_intel do
      url "https://github.com/anson1eechun/ascii-sharks-term/releases/download/v0.2.0/sharks-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aba03f93ff2acca8c224836faa1a00b954e575d84fd881347367ab64e562b8a2"
    end
  end

  def install
    bin.install "sharks"
  end

  test do
    assert_match "greathammer", shell_output("#{bin}/sharks --list")
  end
end
