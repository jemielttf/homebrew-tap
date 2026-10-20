cask "x-media-assist" do
  version "0.3.7"
  sha256 "500bd119ddd0ec5868d22f6d11e48612feb93cc3e3d6c8231e21094a62d38c96"

  url "https://github.com/jemielttf/X-MediaAssist-safari/releases/download/v#{version}/X-Media-Assist-#{version}.zip"
  name "X Media Assist"
  desc "Safari extension for downloading videos and GIF animations from X"
  homepage "https://github.com/jemielttf/X-MediaAssist-safari"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "X Media Assist.app"

  caveats <<~EOS
    After installation, launch X Media Assist and enable the Safari extension from:

      Safari > Settings > Extensions > X Media Assist

    Allow access to X and cdn.syndication.twimg.com for the Safari profile you use.
  EOS
end
