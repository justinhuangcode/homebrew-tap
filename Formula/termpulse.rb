# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Termpulse < Formula
  desc "A native terminal progress indicator CLI for smart detection, graceful fallback, and zero configuration"
  homepage "https://github.com/justinhuangcode/termpulse"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/termpulse/releases/download/v#{version}/termpulse-aarch64-apple-darwin.tar.gz"
      sha256 "58aeb104bcac7b4799e9e065fba572950f672334761d61a0ee11cbb6e82b39db"
    else
      url "https://github.com/justinhuangcode/termpulse/releases/download/v#{version}/termpulse-x86_64-apple-darwin.tar.gz"
      sha256 "14c4e0b9a8713bb4c7a0f1024348dd43397a76c833abdeb5d17d4c028dd4b59c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/termpulse/releases/download/v#{version}/termpulse-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fbe9caa4fbda5f6524a1835252345b9a7a8300c28d7346ef4da55db954317f55"
    else
      url "https://github.com/justinhuangcode/termpulse/releases/download/v#{version}/termpulse-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a4f4e1ec0476ef89e8d8fac38ad47fea559778685ffadb463da266c467b8674"
    end
  end

  def install
    bin.install "termpulse"
  end

  test do
    assert_match "termpulse", shell_output("#{bin}/termpulse --version")
  end
end
