class Jyro < Formula
  desc "Command line interpreter for the Jyro language"
  homepage "https://github.com/realtreesystems/jyro"
  version "0.9.80"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realtreesystems/jyro-cli/releases/download/v0.9.80/jyro-0.9.80-osx-arm64.tar.gz"
      sha256 "351dafbc39164a7fc641359e409fc459b8679e3d579ee5f8f83a3f6b4cd20be6"
    end
  end

  def install
    bin.install "Jyro" => "jyro"
  end

  test do
    assert_match "Jyro", shell_output("#{bin}/jyro --version")
  end
end
