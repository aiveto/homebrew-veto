class Veto < Formula
  desc "Turn existing OpenAPI services into tools AI agents can discover and call under your rules"
  homepage "https://github.com/aiveto/veto"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aiveto/veto/releases/download/v0.1.1/veto_Darwin_arm64.tar.gz"
      sha256 "a9b76766ac94210cf30e7b918669b044ef03fe21d73c097eb8457138cb10110d"
    end
    on_intel do
      url "https://github.com/aiveto/veto/releases/download/v0.1.1/veto_Darwin_x86_64.tar.gz"
      sha256 "fa4df781e3b446555de2e6a3a71baea333926e8be74ff3696e6a0b03b7ca153a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aiveto/veto/releases/download/v0.1.1/veto_Linux_arm64.tar.gz"
      sha256 "ad1ed417e88884104f12d9d766b7015393c2f527a44fc404c505878e96eeb4e2"
    end
    on_intel do
      url "https://github.com/aiveto/veto/releases/download/v0.1.1/veto_Linux_x86_64.tar.gz"
      sha256 "b468cc9231cc4e6f772247cc2e52c50ade4b8750474595422761adb92e69cd3a"
    end
  end

  def install
    bin.install "veto"
  end

  test do
    assert_match "veto", shell_output("#{bin}/veto --help")
  end
end
