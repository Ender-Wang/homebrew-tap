cask "edgemark" do
  version "1.7.0"

  on_arm do
    sha256 "2895b67b6a56c1ad390c5ec190c4ff0eb4469dc6c19ae15849e110f515fc675e"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "166b4e4c6d3c7629df4bd87b7bea543c20c30610ac0406654bd50bef2714e9a8"
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
