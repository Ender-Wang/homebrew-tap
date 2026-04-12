cask "edgemark" do
  version "1.9.1"

  on_arm do
    sha256 "9ea6b9d23d25e8fa5d1c6528287fbed10d0ed973d31cca05e6bc060f788a4684"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "ec92d29e3ff1e29db1d5f8a89128f47eebe747f9dd6041aa00000406f11a416e"
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
