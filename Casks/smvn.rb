require_relative "../lib/custom_download_strategy"

cask "smvn" do
  version "0.2.2"
  sha256 "8aba1b988629d7671f18f6d7528fca5491152014dc8b684cb446c37b7873d2a6"

  url "https://github.com/manhnv319/smvn/releases/download/v#{version}/SMVN_#{version}_aarch64.dmg",
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
