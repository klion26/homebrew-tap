# Generated with JReleaser 1.12.0 at 2024-06-01T13:16:51.147379448Z

class PqrsLearn < Formula
  desc "A command-line used to play with Apache Parquet file"
  homepage "https://github.com/klion26/pqrs-learn"
  version "0.2.10"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.10/pqrs-learn-0.2.10-aarch64-unknown-linux-gnu.zip"
    sha256 "ee07029bbb11818eeb8eb06a0f9fcc3e6bb2d3016667919d90abce1898809925"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.10/pqrs-learn-0.2.10-x86_64-unknown-linux-gnu.zip"
    sha256 "72af5e6ba78d0789833f83533424b09c89f2d6e267bbd32e459daaf251e9c294"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.10/pqrs-learn-0.2.10-aarch64-apple-darwin.zip"
    sha256 "2fbd94cef16cff22450101731b450333860b84b1586cd478ab6ea466909ff0c6"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.10/pqrs-learn-0.2.10-x86_64-apple-darwin.zip"
    sha256 "273feaa34751205cfb5fae489cccefba2c85eaf41ff421ebe66ad9c71673a91d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/pqrs-learn" => "pqrs-learn"
  end

  test do
    output = shell_output("#{bin}/pqrs-learn --version")
    assert_match "0.2.10", output
  end
end
