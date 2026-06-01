class zerotest < Formula
  desc "converting raw terminal error lof to JSON for AI agents and humans"
  homepage "https://www.zerotest.scopohobic.xyz"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/scopophobic/ZeroTest/releases/download/v0.1.2/zerotest-darwin-arm64.tar.gz"
      sha256 "293981dd8ed9c993382f8ae2a678e93be0e0c5c169419d371fd2a2506b79fc06"
    end

    on_intel do
      url "https://github.com/scopophobic/ZeroTest/releases/download/v0.1.2/zerotest-darwin-amd64"
      sha256 "ae54d9206ce042385a0725f9fc84f10a4a6d7d5995a13cc8fd28294c52d9ef5c"
    end
  end

  on_linux do
    url "https://github.com/scopophobic/ZeroTest/releases/download/v0.1.2/zerotest-linux-amd64"
    sha256 "6091984c2f94310c383b77c30a9ffc644cb1f646e22989a4e149609a64ecb963"
  end


  def install 
    bin.install "zerotest"
  end

  test do
    system "#{bin}/zerotest","-v"
  end
end 


