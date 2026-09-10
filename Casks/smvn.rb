require_relative "../lib/custom_download_strategy"

cask "smvn" do
  version "0.1.3"
  sha256 "18a9d457201f989cc24548f0a9efb8a11d9c21d8857505dbf6bb37a65fcb3643"

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
