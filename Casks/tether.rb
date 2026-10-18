cask "tether" do
  version "0.7.1"
  sha256 "ff8be786f096fc448c42ac78f8eff7a69902322248885b06809c94775ec69fef"

  url "https://github.com/willsawyerrrr/tether/releases/download/v#{version}/Tether.zip"
  name "Tether"
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"

  depends_on macos: :ventura

  app "Tether.app"
  binary "#{appdir}/Tether.app/Contents/MacOS/tetherctl", target: "tether"

  zap trash: "~/Library/Application Support/Tether"
end
