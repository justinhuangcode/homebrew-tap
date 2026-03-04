# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Mdansi < Formula
  desc "A blazing-fast Markdown-to-ANSI CLI for terminal rendering, LLM streaming, and syntax highlighting"
  homepage "https://github.com/justinhuangcode/mdANSI"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/mdANSI/releases/download/v#{version}/mdansi-aarch64-apple-darwin.tar.gz"
      sha256 "f83202c1e6bbe1befd8c45403567d7eec5f3b78d15635b37a3b1dc7e5cd04bf0"
    else
      url "https://github.com/justinhuangcode/mdANSI/releases/download/v#{version}/mdansi-x86_64-apple-darwin.tar.gz"
      sha256 "6b826339bdc60c0af63466ed2d3b0f2e056ea834ac5ca2cf765deec54a6b412a"
    end
  end

  on_linux do
    url "https://github.com/justinhuangcode/mdANSI/releases/download/v#{version}/mdansi-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6cc1ce9724f6efe140adf85423fb8dfd6b8660e3883282bd39958e6ee31e593"
  end

  def install
    bin.install "mdansi"
  end

  test do
    assert_match "mdansi", shell_output("#{bin}/mdansi --version")
  end
end
