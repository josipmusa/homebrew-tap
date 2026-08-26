cask "watt" do
  version "1.0.6"
  sha256 "9524434c1830d24e288529e76988f0cfe383a4b9431acbc7910ea59f1180ae7f"

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
