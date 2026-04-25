class Fetch < Formula
  desc "Parallel, chunked, resumable downloads from Azure Blob Storage"
  homepage "https://github.com/matt-dx/fetch"
  version "1.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/matt-dx/fetch/releases/download/v1.14.0/fetch-darwin-amd64"
      sha256 "44010fd65165429c0aab5187018d546bc9a8f442d40a31869c8ca9424d2b941e"
    end

    on_arm do
      url "https://github.com/matt-dx/fetch/releases/download/v1.14.0/fetch-darwin-arm64"
      sha256 "4c642b4bf1281151344e919677d83f205607a92351945bf2053ed7a89531df64"
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
