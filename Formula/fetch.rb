class Fetch < Formula
  desc "Parallel, chunked, resumable downloads from Azure Blob Storage"
  homepage "https://github.com/matt-dx/fetch"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/matt-dx/fetch/releases/download/v1.13.0/fetch-darwin-amd64"
      sha256 "6093c5ae5272650e0443c1053d09bb94e4e7351bf44680a095bc9965baa4dc14"
    end

    on_arm do
      url "https://github.com/matt-dx/fetch/releases/download/v1.13.0/fetch-darwin-arm64"
      sha256 "7f39414a29b1f2adaffbbabeb9639e03101efe8724bb90c50e7c7304d49e71b4"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "fetch-darwin-amd64" => "fetch"
    else
      bin.install "fetch-darwin-arm64" => "fetch"
    end
  end

  test do
    system "#{bin}/fetch", "--help"
  end
end
