# Generated with JReleaser 1.12.0 at 2025-03-09T14:19:11.123241348Z

class Kjql < Formula
  desc "A command-line JSON Query Language"
  homepage "https://github.com/klion26/kjql"
  version "2.0.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/klion26/kjql/releases/download/v2.0.0/kjql-2.0.0-aarch64-unknown-linux-gnu.zip"
    sha256 "9b5444118eab0713dc15c6944698ad83ddc2ada2717e2d399718cde56ee3b9ce"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/klion26/kjql/releases/download/v2.0.0/kjql-2.0.0-x86_64-unknown-linux-gnu.zip"
    sha256 "9679d35fc2a543118c43e5548eb127c4fca81e73cd9cd3de2120cd41f2cb64a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/klion26/kjql/releases/download/v2.0.0/kjql-2.0.0-aarch64-apple-darwin.zip"
    sha256 "19b904d37c044d0317ebac0ba41504df9075efb66bde52109f641764a665c4ae"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/klion26/kjql/releases/download/v2.0.0/kjql-2.0.0-x86_64-apple-darwin.zip"
    sha256 "0180608e122622c5547d9d8faa7d4aa268879090783762a6dbed2ae1692dfd0a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kjql" => "kjql"
  end

  test do
    output = shell_output("#{bin}/kjql --version")
    assert_match "2.0.0", output
  end
end
