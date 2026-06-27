cask "edgemark" do
  version "2.3.0"

  on_arm do
    sha256 "bd38ba7bb2c87e2c0bab49548e0d841fa70cbed3a0159848b6c7ea4f1d503e62"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "2fc8b135e6b1f2c26ef2c03bdd1a8bf57a451ecf33114f93f5673963b72d25ec"
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
