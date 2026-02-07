cask "swifka" do                                                                                                                    
  version "0.1"                                                                                                                     
  sha256 "eed5c36a12a32b55d80de7d57dafdad1b3511ad31abac9046fac45cfcd1b90a0"                                                                                                        
                                                                                                                                    
  url "https://github.com/Ender-Wang/Swifka/releases/download/v#{version}/Swifka-v#{version}.dmg"                                   
  name "Swifka"                                                                                                                     
  desc "Native macOS Kafka monitoring client"
  homepage "https://github.com/Ender-Wang/Swifka"

  depends_on macos: ">= :sequoia"

  app "Swifka.app"
  
  postflight do                                                                                                                     
      system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Swifka.app"]
  end 
end
