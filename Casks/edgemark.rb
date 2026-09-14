cask "edgemark" do
  version "2.12.0"

  on_arm do
    sha256 "d2f42d7fab2883197f86a1d9bbd4cdc5adc6ec0b9c0feeef266cf683960822d5"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "82fc3fc6a5eddd725d26fa8338f5d189314867113b3aa1ea9e363f6397260517"
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
