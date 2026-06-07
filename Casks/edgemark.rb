cask "edgemark" do
  version "2.1.0"

  on_arm do
    sha256 "9cf9b83f0a37f1e31fa76a92c79d8066ccfa2000b841d7722608c9c57729de7c"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "ce7a35d39c00c6dc77d901a8c2f6aebde3784f95cff5ea1e15e1b453fc3068f5"
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
