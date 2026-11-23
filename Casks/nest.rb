cask "nest" do
  version "0.53.0"
  sha256 "757f63f7923435e957460b88bef2f2c7a730b6911e74af346e394c4c8f6009ce"

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
