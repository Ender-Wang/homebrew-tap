cask "swifka" do
  version "0.5"
  sha256 "8d358aa52c9ecec37fc8a7a84d27112719d408b8632f235f0d18384aad3590b1"

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
