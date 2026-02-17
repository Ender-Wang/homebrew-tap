cask "swifka" do
  version "0.16"
  sha256 "492fd7f18270a54368b2fbd6a5cfeae1444bcfe0ad2db8ec92fd55944e9c3bce"

  url "https://github.com/Ender-Wang/Swifka/releases/download/v#{version}/Swifka-v#{version}.dmg"
  name "Swifka"
  desc "Native macOS Kafka monitoring client"
  homepage "https://github.com/Ender-Wang/Swifka"

  depends_on macos: ">= :sequoia"

  app "Swifka.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Swifka.app"]
  end
end
