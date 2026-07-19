cask "edgemark" do
  version "2.7.0"

  on_arm do
    sha256 "80d041e5bfd7fa82b4f8e97fa8d05e68d0ade91e9317c821cbeb5160e458b5aa"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "e1514e6df730ac6756cb91bf8628069ad1b3494d1277f14fefd11f9e3b8e132b"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-x86_64.dmg"
  end

  name "EdgeMark"
  desc "Native macOS side-panel Markdown notes app"
  homepage "https://github.com/Ender-Wang/EdgeMark"

  depends_on macos: :sequoia

  app "EdgeMark.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/EdgeMark.app"]
  end
end
