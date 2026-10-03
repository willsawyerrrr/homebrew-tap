class Tether < Formula
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"
  url "https://github.com/willsawyerrrr/tether/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5b4dd484ab5a8e90fce604fe924925386e11c0762532e560ec45a445128e1ca6"

  depends_on :macos
  depends_on xcode: ["15.0", :build]

  def install
    cd "macos" do
      system "scripts/build-app.sh", "build", version.to_s
      prefix.install "build/Tether.app"
    end
    bin.install_symlink prefix/"Tether.app/Contents/MacOS/Tether" => "tether"
    bin.install_symlink prefix/"Tether.app/Contents/MacOS/tetherctl"
  end

  service do
    run [opt_prefix/"Tether.app/Contents/MacOS/Tether"]
    keep_alive false
  end

  test do
    assert_match "Usage: tetherctl", shell_output("#{bin}/tetherctl 2>&1", 1)
  end
end
