# typed: false
# frozen_string_literal: true

# Generated to match GoReleaser output; the next release overwrites it.
# Binaries are hosted in the public dist repo (source repo is private).
class Webtm < Formula
  desc "WebTerm - browser-based terminal access tool"
  homepage "https://github.com/sgchoi/webterminal"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/sgchoi/webtm-dist/releases/download/v0.6.0/webtm_0.6.0_darwin_amd64.tar.gz"
      sha256 "20b55b78b4d19fa19b8a8c94cf6e46a39e9fef27630033daa6effbc07d77ac50"
    end
    on_arm do
      url "https://github.com/sgchoi/webtm-dist/releases/download/v0.6.0/webtm_0.6.0_darwin_arm64.tar.gz"
      sha256 "c2b524063b5fbab64eeb744b08ebe04ca1db9fd04b6f392b6f40a7b785030353"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sgchoi/webtm-dist/releases/download/v0.6.0/webtm_0.6.0_linux_amd64.tar.gz"
      sha256 "53027717625a1566f08bdda62c3214c5a8abd6d763a31ad6314ee0852b435cca"
    end
    on_arm do
      url "https://github.com/sgchoi/webtm-dist/releases/download/v0.6.0/webtm_0.6.0_linux_arm64.tar.gz"
      sha256 "40401070c665103a11bcc4098f39b4e30100d348bb33f43b35752f325db9c85f"
    end
  end

  def install
    bin.install "webtm"
  end

  test do
    assert_match "webtm version", shell_output("#{bin}/webtm version")
  end
end
