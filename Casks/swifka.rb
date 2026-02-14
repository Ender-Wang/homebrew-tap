cask "swifka" do
  version "0.9"
  sha256 "526269c38d5a18ffd6909326067e35c604d9b8ba7a210af2076b75bcd2dcae86"

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
