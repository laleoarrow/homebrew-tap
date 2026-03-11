cask "idata" do
  version "0.1.9"
  sha256 "c86d8b6c511e52f8d4a0f533c565717e77006e0d6cc5fae46f8770d583bcd641"

  url "https://github.com/laleoarrow/iData/releases/download/v#{version}/iData-v#{version}-macos-universal.zip"
  name "iData"
  desc "Native shell for VisiData workflows"
  homepage "https://github.com/laleoarrow/iData"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "iData.app"

  zap trash: [
    "~/Library/Preferences/io.github.leoarrow.idata.plist",
    "~/Library/Saved Application State/io.github.leoarrow.idata.savedState",
  ]
end
