class Tether < Formula
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"
  url "https://github.com/willsawyerrrr/tether/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "fb2605a2883a16fd95dcc4663c3894656bb214fe89891a235189a9789b7fdc7f"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    ENV["SWIFT_BUILD_FLAGS"] = "--disable-sandbox"
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
