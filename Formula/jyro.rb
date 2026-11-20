class Jyro < Formula
  desc "Command line interpreter for the Jyro language"
  homepage "https://github.com/realtree-systems/jyro-cli"
  version "1.0.0-rc.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realtree-systems/jyro-cli/releases/download/v1.0.0-rc.3/jyro-macos-arm64.tar.gz"
      sha256 "a400f2bc843477283f64e1d95e8e77169c2f8396d852012bf17dd92fb2407183"
    else
      url "https://github.com/realtree-systems/jyro-cli/releases/download/v1.0.0-rc.3/jyro-macos-x64.tar.gz"
      sha256 "a5a146f34bb0899792576c9de1ab40b9d122a4567050e70a4e42904fe441b15c"
    end
  end

  def install
    bin.install "Jyro" => "jyro"
  end

  test do
    assert_match "jyro", shell_output("#{bin}/jyro --version")
  end
end
