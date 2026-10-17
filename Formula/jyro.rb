class Jyro < Formula
  desc "Command line interpreter for the Jyro language"
  homepage "https://github.com/realtree-systems/jyro-cli"
  version "1.0.0-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realtree-systems/jyro-cli/releases/download/v1.0.0-rc.2/jyro-macos-arm64.tar.gz"
      sha256 "5207c26068ab91be02b53b51979f7182366bc1dbe925599f6aaced5fa143a623"
    else
      url "https://github.com/realtree-systems/jyro-cli/releases/download/v1.0.0-rc.2/jyro-macos-x64.tar.gz"
      sha256 "1924babf6b90fa1d674ab8b47bad07af8492ed7b6e0eaf736d4b6cd9698f99af"
    end
  end

  def install
    bin.install "Jyro" => "jyro"
  end

  test do
    assert_match "jyro", shell_output("#{bin}/jyro --version")
  end
end
