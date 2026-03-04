# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Tmuxpulse < Formula
  desc "A real-time, event-driven tmux TUI for session monitoring, pane search, and stale cleanup"
  homepage "https://github.com/justinhuangcode/tmuxpulse"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/tmuxpulse/releases/download/v#{version}/tmuxpulse-macos-arm64.tar.gz"
      sha256 "552f539add4946a6d052ed9f6bf042ed7143d678bce51c5a70673fdcb2c9b5f7"
    else
      url "https://github.com/justinhuangcode/tmuxpulse/releases/download/v#{version}/tmuxpulse-macos-amd64.tar.gz"
      sha256 "b91bdce83e9d275dc379588c26cffd923b30d5ef8c1cc59cbc927fe5e409f478"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/tmuxpulse/releases/download/v#{version}/tmuxpulse-linux-arm64.tar.gz"
      sha256 "53eda77c2dc5fd14196e812c29cdc94e65fab151cdd9defb5db3592cef7acec6"
    else
      url "https://github.com/justinhuangcode/tmuxpulse/releases/download/v#{version}/tmuxpulse-linux-amd64.tar.gz"
      sha256 "21d161dd40e659e688a58b84ba456cad3c2414d5408e2838c98a85b735b74b04"
    end
  end

  def install
    bin.install "tmuxpulse"
  end

  test do
    assert_match "tmuxpulse", shell_output("#{bin}/tmuxpulse --version")
  end
end
