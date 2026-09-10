require_relative "../lib/custom_download_strategy"

cask "smvn" do
  version "0.1.6"
  sha256 "2e5a99daa28bb333ea15a1dcdd7c59a1ba90cfc8d031f030ed2e3eced4599ffb"

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
