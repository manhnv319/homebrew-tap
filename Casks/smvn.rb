require_relative "../lib/custom_download_strategy"

cask "smvn" do
  version "0.1.8"
  sha256 "5272bf34e6eb7852ca656e78bd2103eac71a7f2d8013674858e08b80dde4ba0f"

  url "https://github.com/manhnv319/smvn/releases/download/v#{version}/SMVN_#{version}_universal.dmg",
      using: GitHubPrivateRepositoryReleaseDownloadStrategy
  name "SMVN"
  desc "Smart Model & Multi-Agent Orchestrator for macOS"
  homepage "https://github.com/manhnv319/smvn"

  app "SMVN.app"

  zap trash: [
    "~/.omp/agent/config.yml",
    "~/Library/Application Support/com.smvn.desktop",
    "~/Library/Preferences/com.smvn.desktop.plist",
    "~/Library/Saved Application State/com.smvn.desktop.savedState",
  ]
end
