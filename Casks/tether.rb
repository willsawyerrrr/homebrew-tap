cask "tether" do
  version "0.11.1"
  sha256 "527a8be375f0045ef22358bfc5c33b1a4c0fe0b8cb06791d0d75d4bae7c352ee"

  url "https://github.com/willsawyerrrr/tether/releases/download/v#{version}/Tether.zip"
  name "Tether"
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"

  depends_on macos: :ventura

  app "Tether.app"
  binary "#{appdir}/Tether.app/Contents/MacOS/tetherctl", target: "tether"

  zap trash: "~/Library/Application Support/Tether"
end
