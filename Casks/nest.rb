cask "nest" do
  version "0.34.0"
  sha256 "d2b5e9a9b6d23836b358b6ab172cebefc6ecd206bada24be918fa1d2d1c214eb"

  url "https://github.com/willsawyerrrr/nest/releases/download/v#{version}/Nest.zip"
  name "Nest"
  desc "Household budgeting app for two"
  homepage "https://github.com/willsawyerrrr/nest"

  depends_on macos: :sequoia

  app "Nest.app"

  zap trash: [
    "~/Library/Application Scripts/dev.willsawyerrrr.nest.macos*",
    "~/Library/Containers/dev.willsawyerrrr.nest.macos*",
    "~/Library/Group Containers/group.dev.willsawyerrrr.nest",
  ]
end
