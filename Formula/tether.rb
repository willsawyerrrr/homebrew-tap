class Tether < Formula
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"
  url "https://github.com/willsawyerrrr/tether/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "515f85ec2a539a8e11d69387079996943f6385fed73bc398e80c19c765ef8bdb"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    ENV["SWIFT_BUILD_FLAGS"] = "--disable-sandbox"
    cd "macos" do
      system "scripts/build-app.sh", "build", version.to_s
      prefix.install "build/Tether.app"
    end
    (bin/"tether").write <<~SH
      #!/bin/bash
      exec open "#{opt_prefix}/Tether.app"
    SH
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
