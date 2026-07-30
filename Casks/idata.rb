cask "idata" do
  version "0.2.10"
  sha256 "096c5accac7542c35c4cc76d054c7dba359674305c564b619d07a3805be39d32"

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
