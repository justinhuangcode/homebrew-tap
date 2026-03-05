# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Browsertap < Formula
  desc "A real-time browser control CLI for live tab capture, DOM interaction, and agent automation"
  homepage "https://github.com/justinhuangcode/browsertap"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/browsertap/releases/download/v#{version}/browsertap-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f5b5feddabad62ec5476c99e351aaeb8153df1bf5aca0a479d3d6d07f77f64f8"
    else
      url "https://github.com/justinhuangcode/browsertap/releases/download/v#{version}/browsertap-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c808512c4fa2e075fe189ef3c9de3c0c572c67803749fe471cfa35e0241b1065"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/browsertap/releases/download/v#{version}/browsertap-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7d728db93387245c4116e031bf95f404874430a4ae37ec28dd64e50ef4062e6"
    else
      url "https://github.com/justinhuangcode/browsertap/releases/download/v#{version}/browsertap-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1897c342d5a99dfb876e631c99d232d0ada165e504238cce88cb0388393aadf"
    end
  end

  def install
    bin.install "browsertap"
    bin.install "browsertapd"
  end

  test do
    assert_match "browsertap", shell_output("#{bin}/browsertap --version")
  end
end
