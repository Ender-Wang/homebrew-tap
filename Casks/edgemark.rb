cask "edgemark" do
  version "1.10.1"

  on_arm do
    sha256 "f77a256fc0772d6e7c18920a0674f4ed0e7bbfb6d9053a1e4e8715708c95ee03"
    url "https://github.com/Ender-Wang/EdgeMark/releases/download/v#{version}/EdgeMark-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "8dba56b4d0b783f076a8272f8ef2e245eaf43679e083f9c368d8f4670b762a5b"
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
