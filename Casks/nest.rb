cask "nest" do
  version "0.4.0"
  sha256 "5927566fe6b260d4737f597c8b198bb39e887a34d77a06a472f9ae7dd1f915d8"

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
