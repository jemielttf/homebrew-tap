cask "x-media-assist" do
  version "0.3.2"
  sha256 "17a7132f7b95ef68025721999704d564900e8daa128cc2db1afb695d13b500c5"

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
