# Generated with JReleaser 1.12.0 at 2025-02-08T05:22:24.191270851Z

class PqrsLearn < Formula
  desc "A command-line used to play with Apache Parquet file"
  homepage "https://github.com/klion26/pqrs-learn"
  version "0.2.13"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.13/pqrs-learn-0.2.13-aarch64-unknown-linux-gnu.zip"
    sha256 "93e826029d3be297d607ebb3d55a08cb862304d9be6e70bc4c24dec226809b56"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.13/pqrs-learn-0.2.13-x86_64-unknown-linux-gnu.zip"
    sha256 "d412a5dda86772c47a1bfceb2c9486ab6b0df4137f120585c5eeb2702e9e8d28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.13/pqrs-learn-0.2.13-aarch64-apple-darwin.zip"
    sha256 "3ee1373c207bf3ec089a50dce5cf2994fba642ba9f86e8f58af878c3a248b822"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/klion26/pqrs-learn/releases/download/v0.2.13/pqrs-learn-0.2.13-x86_64-apple-darwin.zip"
    sha256 "1b5374e26f1fb9079226b0b69965cadebfced3cee420e757d981845459d8bf21"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/pqrs-learn" => "pqrs-learn"
  end

  test do
    output = shell_output("#{bin}/pqrs-learn --version")
    assert_match "0.2.13", output
  end
end
