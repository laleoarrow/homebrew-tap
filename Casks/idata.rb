cask "idata" do
  version "0.2.20"
  sha256 "ed023a55b6e6f06f861e1e5295ded6fdfa4789e2af69841881f055ce87278d42"

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
