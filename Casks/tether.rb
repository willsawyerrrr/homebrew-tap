cask "tether" do
  version "0.11.7"
  sha256 "69760ea0ab46dd6901ba656681e6a04520d253c614f26f7edbaf89c12bd1d643"

  url "https://github.com/willsawyerrrr/tether/releases/download/v#{version}/Tether.zip"
  name "Tether"
  desc "Menu bar manager for Claude Code remote-control servers"
  homepage "https://github.com/willsawyerrrr/tether"

  depends_on macos: :ventura

  app "Tether.app"
  binary "#{appdir}/Tether.app/Contents/MacOS/tetherctl", target: "tether"

  zap trash: "~/Library/Application Support/Tether"
end
