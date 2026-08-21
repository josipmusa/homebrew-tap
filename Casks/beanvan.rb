cask "beanvan" do
  version "0.1.3"
  sha256 "6345fd63ac38397f63e36833fbd6da3c1cbde348928a27724a9df4d8925c70e7"

  url "https://github.com/josipmusa/beanvan/releases/download/v#{version}/Beanvan-#{version}-macos-arm64.zip",
      verified: "github.com/josipmusa/beanvan/"
  name "Beanvan"
  desc "Peer-synchronized coffee breaks in the macOS menu bar"
  homepage "https://github.com/josipmusa/beanvan"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Beanvan.app"

  caveats <<~EOS
    Beanvan is ad-hoc signed and is not notarized. After installation, try
    opening Beanvan once. If macOS blocks it, open System Settings > Privacy &
    Security, scroll to Security, and choose Open Anyway.

    Only override Gatekeeper after verifying that this tap and release are the
    ones you intended to install. You may need to approve Beanvan again after
    an upgrade until releases are Developer ID signed and notarized.
  EOS
end
