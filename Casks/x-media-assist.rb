cask "x-media-assist" do
  version "0.3.1"
  sha256 "f09bd739990f57e3faa0a178fe42db4b29b6a89cc411d0921b3f34d15929edaa"

  url "https://github.com/jemielttf/X-MediaAssist-safari/releases/download/v#{version}/X-Media-Assist-#{version}.zip"

  name "X Media Assist"
  desc "Safari extension for downloading videos and GIF animations from X"
  homepage "https://github.com/jemielttf/X-MediaAssist-safari"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "X Media Assist.app"

  caveats <<~EOS
    After installation, launch X Media Assist and enable the Safari extension from:

      Safari > Settings > Extensions > X Media Assist

    Allow access to X and cdn.syndication.twimg.com for the Safari profile you use.
  EOS
end