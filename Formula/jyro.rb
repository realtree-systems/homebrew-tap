class Jyro < Formula
  desc "Command line interpreter for the Jyro language"
  homepage "https://github.com/realtree-systems/jyro-cli"
  version "1.0.0-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realtree-systems/jyro-cli/releases/download/v1.0.0-rc.1/jyro-macos-arm64.tar.gz"
      sha256 "ea796f49232dd8ccc054c700761e212c029ff0ea10bc27598a7a09231cc05423"
    else
      url "https://github.com/realtree-systems/jyro-cli/releases/download/v1.0.0-rc.1/jyro-macos-x64.tar.gz"
      sha256 "b5095cfe7a2dc22e6cb2573fbb4b8ff3d69c4de786c736d17c4ffe260844fc7f"
    end
  end

  def install
    bin.install "Jyro" => "jyro"
  end

  test do
    assert_match "jyro", shell_output("#{bin}/jyro --version")
  end
end
