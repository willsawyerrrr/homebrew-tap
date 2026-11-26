cask "tether" do
  version "0.12.3"
  sha256 "eb456fdb50999c08d31edd0b3b8a6b61da0f68cdf9da8033a461ff7475e3a6fb"

  url "https://github.com/willsawyerrrr/tether/releases/download/v#{version}/Tether.zip"
  name "Tether"
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"

  depends_on macos: :golden_gate

  app "Tether.app"
  binary "#{appdir}/Tether.app/Contents/MacOS/tetherctl", target: "tether"

  zap trash: "~/Library/Application Support/Tether"
end
