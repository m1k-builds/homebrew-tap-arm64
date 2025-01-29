cask "pixelpulse2" do
    version "pp2-libsmu-1.0.4-2025-01-29"
    sha256 "5b7623e32ee1454e09eaf6528ea0623630a30794d465a3a44a0a23695c8f2fa7" # Replace with your PKG's SHA-256 hash
  
    url "https://github.com/m1k-builds/Pixelpulse2-macOS/releases/latest/download/pp2-arm64.zip"
    name "Pixelpulse2"
    desc "Pixelpulse2 is a user interface for analog systems exploration. Companion app for Adalm1000"
    homepage "m1k-builds.pages.dev/Pixelpulse2-MacOS"
  
    app "pixelpulse2.app"
    uninstall pkgutil: "com.analogdevicesinc.pixelpulse2"
  end
  