cask "edgemark" do
  version "1.10.0"

  on_arm do
    sha256 "49781ce9e3a082c4ccd7b995a0a2a792861480f2fd7eeda803fd8ff361c33c5d"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "6c1884bbe39dfe21b47f564dce0bcd6ccfd4421b51c1b50528b2e0abdc491827"
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
