cask "tether" do
  version "0.11.6"
  sha256 "de0a20050b89196c3d48ee4ce87b2b9487fdc7e9e12f0527d6b7f143238a53bc"

  url "https://github.com/willsawyerrrr/tether/releases/download/v#{version}/Tether.zip"
  name "Tether"
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"

  depends_on macos: :ventura

  app "Tether.app"
  binary "#{appdir}/Tether.app/Contents/MacOS/tetherctl", target: "tether"

  zap trash: "~/Library/Application Support/Tether"
end
