cask "edgemark" do
  version "2.5.0"

  on_arm do
    sha256 "8db50d6798cdf43937c5a0c6d8c76febb698d1823cc712d3b0a94e90ea492e58"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "f4e37c147428ca2acd93ec2a37b897b3a63e034d0aed2cbefb616507e653cb1b"
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
