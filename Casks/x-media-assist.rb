cask "x-media-assist" do
  version "0.3.6"
  sha256 "9ee9adc51c39f3c91636bacbb2a713773c9bac0bdaff47fced024a564464de96"

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
