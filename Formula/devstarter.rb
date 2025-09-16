class Devstarter < Formula
  desc "Quickly launch Node.js projects from ~/Developer"
  homepage "https://github.com/dovatgabriel/devstarter"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v0.1.1/devstarter-macos-x64-v0.1.1.tar.gz"
      sha256 "c22b4a3c566a79c0a7b6408cc884c8fd3432c028d3fc441e7fb5527bc30138bb"
    end
    on_arm do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v0.1.1/devstarter-macos-arm64-v0.1.1.tar.gz"
      sha256 "353e18530e5118d965f209787a17dea3d869cb7d96d74e29bc25794db39af1a8"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "devstarter-x64" => "devstarter"
      bin.install_symlink bin/"devstarter" => "ds"
    else
      bin.install "devstarter-arm64" => "devstarter"
      bin.install_symlink bin/"devstarter" => "ds"
    end
  end

  test do
    system "#{bin}/devstarter", "--help"
  end
end
