require_relative "../lib/custom_download_strategy"

cask "smvn" do
  version "0.2.0"
  sha256 "60737d116b8f76d1d162498988645fd6f6b64dbe64bb8524cf07b2c85b4c2565"

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
