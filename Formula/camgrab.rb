# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Camgrab < Formula
  desc "A modern CLI tool for capturing snapshots, recording clips, and managing RTSP/ONVIF cameras"
  homepage "https://github.com/justinhuangcode/camgrab"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-macos-arm64.tar.gz"
      sha256 "93ac55d047119b1315f2be72ffa94d018360de6a6171a5b7d1fe333621006599"
    else
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-macos-x86_64.tar.gz"
      sha256 "247568e70794cce327a0497b16e856fdc74039703727655e9f6c842724467ca7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-linux-arm64.tar.gz"
      sha256 "cf0ae0b2c4954691db8bbc010e0355367ae3b417539e6ac6c6c57f4281062070"
    else
      url "https://github.com/justinhuangcode/camgrab/releases/download/v#{version}/camgrab-v#{version}-linux-x86_64.tar.gz"
      sha256 "6463baa281fa99e9dbc529b2994847e0354f9d0234513aed463791d2dc69d943"
    end
  end

  def install
    bin.install "camgrab"
  end

  test do
    assert_match "camgrab", shell_output("#{bin}/camgrab --version")
  end
end
