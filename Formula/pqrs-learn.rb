# Generated with JReleaser 1.12.0 at 2025-02-08T03:55:26.249270957Z

class PqrsLearn < Formula
  desc "A command-line used to play with Apache Parquet file"
  homepage "https://github.com/klion26/pqrs-learn"
  version "0.2.10"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.10/pqrs-learn-0.2.10-aarch64-unknown-linux-gnu.zip"
    sha256 "8ae06317e6903724c09d3fa153c7155f654e3f9db6b336e561b6b98d1ed16819"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.10/pqrs-learn-0.2.10-x86_64-unknown-linux-gnu.zip"
    sha256 "089c1ffda5246b6dbe1fdc66a011c8fefb963eadfe4976122cf33343abef2053"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.10/pqrs-learn-0.2.10-aarch64-apple-darwin.zip"
    sha256 "25db57b401ad797066d256260494bf225b12ef56ff5a5d15fac421cdf34222a9"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.10/pqrs-learn-0.2.10-x86_64-apple-darwin.zip"
    sha256 "5e35de1536c459055265dcc8e4d54179a9e6cf13c53428965f846b5130dfd807"
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
