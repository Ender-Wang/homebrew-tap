cask "edgemark" do
  version "1.5.0"

  on_arm do
    sha256 "1a77845bcde12eea279d99f27c7e50762f6aef9623fc4c59f7cd8010e96e59f0"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "e41e87adb11c0f02fb26b950062ce1f0dcc07fb1679ec3cab73eaf0caedd878e"
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
