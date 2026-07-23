class Lidwatch < Formula
  desc "Keep your Mac awake while AI agents run"
  homepage "https://github.com/Maxusmusti/lidwatch"
  url "https://github.com/Maxusmusti/lidwatch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  version "0.1.0"

  depends_on :macos
  depends_on xcode: ["14.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/lidwatch"
  end

  test do
    assert_match "lidwatch", shell_output("#{bin}/lidwatch --help")
  end
end
