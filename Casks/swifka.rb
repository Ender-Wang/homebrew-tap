cask "swifka" do
  version "0.7"
  sha256 "353d040f9b705a689ddd80f0712b95f89449932af5554036683a666423701a9e"

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
