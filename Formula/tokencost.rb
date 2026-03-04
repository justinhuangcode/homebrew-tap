# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Tokencost < Formula
  desc "A unified LLM token cost CLI for usage normalization, cost estimation, and multi-provider pricing"
  homepage "https://github.com/justinhuangcode/tokencost"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/tokencost/releases/download/v#{version}/tokencost-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "85eacea021f74ff09cfaf219aec0e34ce41469466c0e38b4f5c173dec4616ea3"
    else
      url "https://github.com/justinhuangcode/tokencost/releases/download/v#{version}/tokencost-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "325209f6a8c8771c0f334ef6cf2d89ee5e3464149b433b9c4421f14f80fb9b8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/tokencost/releases/download/v#{version}/tokencost-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "049cb8d4b9008f061e58c165224c9c97cb39c878fc3ea1303a8be9742b0ec14f"
    else
      url "https://github.com/justinhuangcode/tokencost/releases/download/v#{version}/tokencost-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e7d1e1925fae821b4a94c1dc89457b4466181fef63962de606ec46e733b31a3"
    end
  end

  def install
    bin.install "tokencost"
  end

  test do
    assert_match "tokencost", shell_output("#{bin}/tokencost --version")
  end
end
