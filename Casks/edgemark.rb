cask "edgemark" do
  version "3.2.0"

  on_arm do
    sha256 "b50a5b92a79fb8a1275c5ee858134b5076e9913c676df907ca15d5b42dd183b4"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "502ca8220caf0c8e645a72f6ae5212c522c1dabb9b65b0a832361483caef3cdf"
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
