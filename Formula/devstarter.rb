class Devstarter < Formula
  desc "Quickly launch Node.js projects from ~/Developer"
  homepage "https://github.com/dovatgabriel/devstarter"
  version "0.1.5"
  on_macos do
    on_intel do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v0.1.5/devstarter-macos-x64-v0.1.5.tar.gz"
      sha256 "ed17219e2a2e6e2dd5ceaab411ea5debe6462862309c2ab8ef2d01bc78e50736"
    end
    on_arm do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v0.1.5/devstarter-macos-arm64-v0.1.5.tar.gz"
      sha256 "27cda178d0679265a18b748b639c5317b85706a16d85aa39c183fbd2d21a748f"
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
