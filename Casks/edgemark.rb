cask "edgemark" do
  version "1.6.0"

  on_arm do
    sha256 "b1d40acf844ea54409f88da87470fe7db70d971ac9a5fb59322d13e296e7f048"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "0d2daa3528d3212fbaa218600404a66fa877334a7bd23fdb487f39b19505f9cb"
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
