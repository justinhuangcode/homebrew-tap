# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the release workflow.
# Manual edits will be overwritten on next release.
class Browsercli < Formula
  desc "A browser visual workspace for AI agents"
  homepage "https://github.com/justinhuangcode/browsercli"
  license "MIT"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/browsercli/releases/download/v#{version}/browsercli-v#{version}-macos-arm64.tar.gz"
      sha256 "checksums/browsercli-v1.0.4-macos-arm64.tar.gz.sha256:e777b13541a986c973aa9627946479989a6050501afb2dcecbcf9a31dad08ffc"
    else
      url "https://github.com/justinhuangcode/browsercli/releases/download/v#{version}/browsercli-v#{version}-macos-x86_64.tar.gz"
      sha256 "checksums/browsercli-v1.0.4-macos-x86_64.tar.gz.sha256:d4547130088c96ae815e968a805532bb7c566fd9f9538b62835a6b3b27ba7508"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justinhuangcode/browsercli/releases/download/v#{version}/browsercli-v#{version}-linux-arm64.tar.gz"
      sha256 "checksums/browsercli-v1.0.4-linux-arm64.tar.gz.sha256:031f2bb28754e8617841fe6262225573dcd6dccf6d0b2aa34dcc8ab7ceda1665"
    else
      url "https://github.com/justinhuangcode/browsercli/releases/download/v#{version}/browsercli-v#{version}-linux-x86_64.tar.gz"
      sha256 "checksums/browsercli-v1.0.4-linux-x86_64.tar.gz.sha256:8e384d98db214fe779a2dc12a0b33985c476632c992f31d82d8bc1a6055523fd"
    end
  end

  def install
    bin.install "browsercli"
  end

  test do
    assert_match "browsercli", shell_output("#{bin}/browsercli --version")
  end
end
