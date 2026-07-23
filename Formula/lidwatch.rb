class Lidwatch < Formula
  desc "Keep your Mac awake while AI agents run"
  homepage "https://github.com/Maxusmusti/lidwatch"
  url "https://github.com/Maxusmusti/lidwatch/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "705ea6e85341b77d521252ffea7d51356ff185a991146da78b35a53817d8a34d"
  license "MIT"
  version "0.1.1"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/lidwatch"
  end

  test do
    assert_match "lidwatch", shell_output("#{bin}/lidwatch --help")
  end
end
