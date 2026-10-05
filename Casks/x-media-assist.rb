cask "x-media-assist" do
  version "0.3.4"
  sha256 "42fdccc84214fec290ea36eed16af8389c327095330b6ef18cc7bac793c6255d"

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
