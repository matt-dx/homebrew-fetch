class Fetch < Formula
  desc "Parallel, chunked, resumable downloads from Azure Blob Storage"
  homepage "https://github.com/matt-dx/fetch"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/matt-dx/fetch/releases/download/v1.15.0/fetch-darwin-amd64"
      sha256 "5c2c64ae8366b1a6844182377f7896edb1909ab3ff5c0bb05006ba6a6b01c8dd"
    end

    on_arm do
      url "https://github.com/matt-dx/fetch/releases/download/v1.15.0/fetch-darwin-arm64"
      sha256 "228bf1d057081164078132d863698147b651d99c6505b58f4ca53b70b57803c6"
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
