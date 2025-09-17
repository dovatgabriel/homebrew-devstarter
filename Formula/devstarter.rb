class Devstarter < Formula
  desc "Quickly launch Node.js projects from ~/Developer"
  homepage "https://github.com/dovatgabriel/devstarter"
  version "1.0.1"
  on_macos do
    on_intel do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v1.0.1/devstarter-macos-x64-v1.0.1.tar.gz"
      sha256 "da01445ccf114fb12e70b2f056d350ba5ffbdd465b72637af2fd8c28c38cd276"
    end
    on_arm do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v1.0.1/devstarter-macos-arm64-v1.0.1.tar.gz"
      sha256 "9228fcdb073876f855fa4a1b86b809d95b9916305b82b453fec85f516c7b63ad"
    end
  end
  def install
    if Hardware::CPU.intel?
      bin.install "devstarter-x64" => "devstarter"
    else
      bin.install "devstarter-arm64" => "devstarter"
    end
    bin.install_symlink bin/"devstarter" => "ds"
  end
  test do
    system "#{bin}/devstarter", "--help"
  end
end
