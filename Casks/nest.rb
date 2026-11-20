cask "nest" do
  version "0.36.2"
  sha256 "1b614b7d078a98c46e3c8e5fb8e8735cdd1622da956eedcfe3a2e197c8552de8"

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
