# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class IronclawZh < Formula
  desc "Secure personal AI assistant - Chinese-localized distribution (ironclaw-zh)"
  homepage "https://github.com/justinhuangcode/ironclaw-zh"
  license "MIT"
  version "0.16.1-zh.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/ironclaw-zh/releases/download/v#{version}/ironclaw-aarch64-apple-darwin.tar.gz"
      sha256 "f5dec219ff22714189d8e86723c479e4a976603d4322841b86213254fc6cb2ab"
    else
      url "https://github.com/justinhuangcode/ironclaw-zh/releases/download/v#{version}/ironclaw-x86_64-apple-darwin.tar.gz"
      sha256 "489c31333f079bf8c140b5068a240b574eab84edd032fecc7d32a56a1c1db4fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/ironclaw-zh/releases/download/v#{version}/ironclaw-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1b2737b9c030625e2f47f17af6c3b21df124e598803b39ba95c67a24c81487f"
    else
      url "https://github.com/justinhuangcode/ironclaw-zh/releases/download/v#{version}/ironclaw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff26ed2ca7c0f1899d2837b7f19a61a3935cab5c09a46eb6c5e98f6d96c8add3"
    end
  end

  def install
    bin.install "ironclaw"
  end

  test do
    assert_match "ironclaw", shell_output("#{bin}/ironclaw --version")
  end
end
