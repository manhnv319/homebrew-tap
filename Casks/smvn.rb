require_relative "custom_download_strategy"

cask "smvn" do
  version "0.1.2"
  sha256 "0f87f2bd11d84aee22ba833f93f1e8119c840c75c3657349a057ef36b33a2376"

  url "https://github.com/manhnv319/smvn/releases/download/v#{version}/SMVN_#{version}_universal.dmg",
      using: GitHubPrivateRepositoryReleaseDownloadStrategy
  name "SMVN"
  desc "Smart Model & Multi-Agent Orchestrator for macOS"
  homepage "https://github.com/manhnv319/smvn"

  app "SMVN.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/SMVN.app"],
                   sudo: false
  end

  zap trash: [
    "~/.omp/agent/config.yml",
    "~/Library/Application Support/com.smvn.desktop",
    "~/Library/Preferences/com.smvn.desktop.plist",
    "~/Library/Saved Application State/com.smvn.desktop.savedState",
  ]
end
