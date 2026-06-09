cask "idata" do
  version "0.2.4"
  sha256 "92930fa76af30267261651feb4b1b54da28d222c4482807459844fd510a0aec8"

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
