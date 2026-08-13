cask "watt" do
  version "1.0.4"
  sha256 "47a34f0c3450642f7c7dda7f4ed4c22a7c9edbd63e198357e9f2870ac1e877f1"

  url "https://github.com/josipmusa/watt/releases/download/v#{version}/Watt-#{version}-macos-arm64.zip",
      verified: "github.com/josipmusa/watt/"
  name "Watt"
  desc "Claude and Codex subscription usage in the menu bar"
  homepage "https://github.com/josipmusa/watt"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Watt.app"

  caveats <<~EOS
    Watt is ad-hoc signed and is not notarized. After installation, try opening
    Watt once. If macOS blocks it, open System Settings > Privacy & Security,
    scroll to Security, and choose Open Anyway.

    Only override Gatekeeper after verifying that this tap and release are the
    ones you intended to install. You may need to approve Watt again after an
    upgrade until releases are Developer ID signed and notarized.
  EOS
end
