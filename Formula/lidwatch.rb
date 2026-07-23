class Lidwatch < Formula
  desc "Keep your Mac awake while AI agents run"
  homepage "https://github.com/Maxusmusti/lidwatch"
  url "https://github.com/Maxusmusti/lidwatch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5bcc5019fa0dc570f9eaba2daf0cb71b1591287eb0e211f325c2b73bcf931890"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/lidwatch"
  end

  test do
    assert_match "lidwatch", shell_output("#{bin}/lidwatch --help")
  end
end
