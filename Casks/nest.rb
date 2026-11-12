cask "nest" do
  version "0.26.0"
  sha256 "73f210538883e013a9238f448d98b8ff33d3ef4561d224cae7c2958636707748"

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
