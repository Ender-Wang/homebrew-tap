cask "edgemark" do
  version "1.7.1"

  on_arm do
    sha256 "4af41e3cf4c794f68ea8527f3a318454ef5486ba5b67209083c831cb9c3e4a3a"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "0d6e9fe0c7e5a5dc2c5e213d7768687d59dda5d2650d5b8a35530deb0e62e406"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-x86_64.dmg"
  end

  name "EdgeMark"
  desc "Native macOS side-panel Markdown notes app"
  homepage "https://github.com/Ender-Wang/EdgeMark"

  depends_on macos: ">= :sequoia"

  app "EdgeMark.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/EdgeMark.app"]
  end
end
