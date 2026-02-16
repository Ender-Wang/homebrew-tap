cask "swifka" do
  version "0.15"
  sha256 "69cb8e95fdff59b5583c6fea55b117ef05f0cbd9dbe7cf7c73584f598d92ed67"

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
