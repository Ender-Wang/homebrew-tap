cask "edgemark" do
  version "1.9.0"

  on_arm do
    sha256 "cebb37faacb5e1e35a19f2be2ced5911389ce04608177dec0a32460a77941430"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "a058d6505517a236f44f72e1227054f16b7d90d5c3ac8bbdb2f8c190a2298d14"
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
