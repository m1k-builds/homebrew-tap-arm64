cask "pixelpulse2" do
    version "pp2-libsmu-1.0.4-2025-01-31"
    sha256 "9c0d5e69471a90f0812ce386c79b39e6fea1a3a8dfa5ff96b02029fdf6e21a58" # Replace with your PKG's SHA-256 hash
  
    url "https://github.com/m1k-builds/Pixelpulse2-macOS/releases/latest/download/pp2-arm64.zip"
    name "Pixelpulse2"
    desc "Pixelpulse2 is a user interface for analog systems exploration. Companion app for Adalm1000"
    homepage "m1k-builds.pages.dev/Pixelpulse2-MacOS"
  
    app "pixelpulse2.app"
    uninstall pkgutil: "com.analogdevicesinc.pixelpulse2"

    def post_install
        system "codesign", "--force", "--deep", "--sign", "-", Contents/MacOS/pixelpulse2
    end
  end
  
