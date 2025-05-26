cask "pixelpulse2" do
    version "pp2-libsmu-1.0.4-2025-05-26"
    sha256 "ed86f8ee1feef3838f171951d4a6077efed1d79126fb43ffe688f819b38debb0" # Replace with your PKG's SHA-256 hash
  
    url "https://github.com/m1k-builds/Pixelpulse2-macOS/releases/latest/download/pp2-arm64.zip"
    name "Pixelpulse2"
    desc "Pixelpulse2 is a user interface for analog systems exploration. Companion app for Adalm1000"
    homepage "m1k-builds.pages.dev/Pixelpulse2-MacOS"
  
    app "pixelpulse2.app"
    uninstall pkgutil: "com.analogdevicesinc.pixelpulse2"

    def post_install
        system "codesign", "--force", "--deep", "--sign", "-", " --timestamp=none", "--all-architectures", Contents/MacOS/pixelpulse2
    end
  end
  
