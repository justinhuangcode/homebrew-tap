# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Camgrab < Formula
  desc "A modern CLI tool for capturing snapshots, recording clips, and managing RTSP/ONVIF cameras"
  homepage "https://github.com/justinhuangcode/camgrab"
  license "MIT"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-macos-arm64.tar.gz"
      sha256 "2354e8b2de3274d8e16e61bcaf57753985da5811c6d6858f3b18da2c82cf83f2"
    else
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-macos-x86_64.tar.gz"
      sha256 "e43873aeee6f95bd43e3a9635130bfb3d1020ec34b1faab6fee448f40f1b88a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-linux-arm64.tar.gz"
      sha256 "7c305f77f7c58acd1b27c8774df8762f129cc278ea76aee19e010dcef5bf4919"
    else
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-linux-x86_64.tar.gz"
      sha256 "13854a32f4f50faf76769ecacb43dec7a59100ccba6015f0398dd57dd327fb20"
    end
  end

  def install
    bin.install "camgrab"
  end

  test do
    assert_match "camgrab", shell_output("#{bin}/camgrab --version")
  end
end
