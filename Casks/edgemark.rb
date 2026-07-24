cask "edgemark" do
  version "2.8.0"

  on_arm do
    sha256 "bfcb20f8d50ba912fe1f1aa25da95fdc2ef6b698fe7c840a1e5aa80601e198be"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "8ea1f6cad803d4c09b48aec42364754aa30f2b48542f4b18b4e5352b223ed885"
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
