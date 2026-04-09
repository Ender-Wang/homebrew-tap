cask "edgemark" do
  version "1.8.0"

  on_arm do
    sha256 "f0713df3e6041cd11e5473e4af0d0763708ab5ec62774a729cce02bfbad54930"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "81e3fdd0ed57616d86beaa59e2c729af74c3ee610f3429b624a7728b37a8bd11"
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
