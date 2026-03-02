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
      sha256 "801a298442ff182ef52722f7c763ff412faae730fd6fcb8363a3eb5da80e6481"
    else
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-macos-x86_64.tar.gz"
      sha256 "9e30701540ff6802e51af92b91508e7a049ebb665a4d4c179ece976108598c68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-linux-arm64.tar.gz"
      sha256 "483ce2acb40b5b77af4af6c3ec1ffa25add713476fef2feee106c66f41064ca7"
    else
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-linux-x86_64.tar.gz"
      sha256 "63af690370ec32483c99ea7286b8b65202587007433a09b6e39d642a5cc5553c"
    end
  end

  def install
    bin.install "camgrab"
  end

  test do
    assert_match "camgrab", shell_output("#{bin}/camgrab --version")
  end
end
