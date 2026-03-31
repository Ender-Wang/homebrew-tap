cask "edgemark" do
  version "1.4.0"

  on_arm do
    sha256 "a5eed7dbbeb72f4fc3f8beab38839aee8b11a4fb018b57cb8f82ccee3a6eb50c"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "01fdfee49516bc6103f8c3f06f81f1fdad445fede956e6785433e7a8e08bb7dd"
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
