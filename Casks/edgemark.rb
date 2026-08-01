cask "edgemark" do
  version "2.9.0"

  on_arm do
    sha256 "d31ddd960aa3892ff8f7a93dc4de164508158bb2f1634991bfabd149c4387ee7"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "f3bf805f66e2576156b8d8a01d2ac9fb048a7e2593adb75059e2e04853507231"
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
