cask "idata" do
  version "0.2.17"
  sha256 "a9fc22c290262079aaa169230dc72a1e877903e77dd7dac1f335552cd1abf71f"

  url "https://github.com/laleoarrow/iData/releases/download/v#{version}/iData-v#{version}-macos-universal.zip"
  name "iData"
  desc "Native shell for VisiData workflows"
  homepage "https://github.com/laleoarrow/iData"

  auto_updates true
  depends_on macos: :sonoma

  app "iData.app"

  zap trash: [
    "~/Library/Preferences/io.github.leoarrow.idata.plist",
    "~/Library/Saved Application State/io.github.leoarrow.idata.savedState",
  ]
end
