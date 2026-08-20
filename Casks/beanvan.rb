cask "beanvan" do
  version "0.1.1"
  sha256 "8bc60ab4694d7ffd5fb27b3f11028cf893f1614d78e683e17fb0d344d836e294"

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
