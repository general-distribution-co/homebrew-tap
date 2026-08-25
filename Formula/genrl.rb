class Genrl < Formula
  desc "Command-line interface and local MCP server for GENRL"
  homepage "https://wallet.genrl.co"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/general-distribution-co/homebrew-tap/releases/download/v0.2.0/genrl_0.2.0_darwin_arm64.tar.gz"
      sha256 "337c2d3a45fc578784108520397544c0e1afc55e748b2648188443041c93e750"
    elsif Hardware::CPU.intel?
      url "https://github.com/general-distribution-co/homebrew-tap/releases/download/v0.2.0/genrl_0.2.0_darwin_amd64.tar.gz"
      sha256 "ccb548f7a47e8ecf7c46b61fd75a8642ca84eb6f8f9aa1a8d75fcb5576a4ccd9"
    else
      odie "GENRL does not provide a binary for this macOS CPU"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/general-distribution-co/homebrew-tap/releases/download/v0.2.0/genrl_0.2.0_linux_arm64.tar.gz"
      sha256 "fb77ee5f6ad5b14cd340bfb79d781b1fd8649106cacfef294878040f800871cc"
    elsif Hardware::CPU.intel?
      url "https://github.com/general-distribution-co/homebrew-tap/releases/download/v0.2.0/genrl_0.2.0_linux_amd64.tar.gz"
      sha256 "7c4cc21d4acd882eee6093b2861781336dcb464cc20c4a2620c8c1f2dc4a7de8"
    else
      odie "GENRL does not provide a binary for this Linux CPU"
    end
  end

  def install
    bin.install "genrl", "genrl-mcp"
  end

  test do
    assert_predicate bin/"genrl", :executable?
    assert_predicate bin/"genrl-mcp", :executable?
  end
end
