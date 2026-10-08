cask "edgemark" do
  version "3.0.0"

  on_arm do
    sha256 "8531741a3b59a97aed8d6d99f6bfd44a043a1bda17bcb15f3d0adbdee0a6f659"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "3ce17a7ea37fd7b35216f0077dd8dd2259ce1d2bc5702928e47510712b751992"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-x86_64.dmg"
  end

  name "EdgeMark"
  desc "Native macOS side-panel Markdown notes app"
  homepage "https://github.com/Ender-Wang/EdgeMark"

  depends_on macos: :sequoia

  app "EdgeMark.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/EdgeMark.app"]
  end
end
