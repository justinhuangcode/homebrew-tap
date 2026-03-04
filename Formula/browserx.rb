# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Browserx < Formula
  desc "A cross-platform browser cookie extraction CLI for session replay, authentication, and automation"
  homepage "https://github.com/justinhuangcode/browserx"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/browserx/releases/download/v#{version}/browserx-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dadb83f3884306ecfdbfb4f0141c58c1910dda22cb9eaaa8da49dc6bf4ea3a1d"
    else
      url "https://github.com/justinhuangcode/browserx/releases/download/v#{version}/browserx-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "84f27d4f300cba5c99d3d2a71dbde6a7e035f2e8a60248a7f6cf1fb70adcef9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/browserx/releases/download/v#{version}/browserx-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21a4ff8246be1c7f96ed3e6a29a77967481a7c80854d726108d33c232dd4e336"
    else
      url "https://github.com/justinhuangcode/browserx/releases/download/v#{version}/browserx-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02c43d0d42c18e9131638ce57bbbdab5256481955515ad0b3a4f10045ac478ff"
    end
  end

  def install
    bin.install "browserx"
  end

  test do
    assert_match "browserx", shell_output("#{bin}/browserx --version")
  end
end
