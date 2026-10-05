cask "tether" do
  version "0.5.0"
  sha256 "deea16495bbf0f7efd14bfe69b126bc8c2957a495d91f95a5f5ea07fbbad441b"

  url "https://github.com/willsawyerrrr/tether/releases/download/v#{version}/Tether.zip"
  name "Tether"
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"

  depends_on macos: :ventura

  app "Tether.app"
  binary "#{appdir}/Tether.app/Contents/MacOS/tetherctl", target: "tether"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Tether.app"]
  end

  zap trash: "~/Library/Application Support/Tether"
end
