class Zerotest < Formula
  desc "converting raw terminal error lof to JSON for AI agents and humans"
  homepage "https://www.zerotest.scopohobic.xyz"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/scopophobic/ZeroTest/releases/download/v0.1.2/zerotest-darwin-arm64.tar.gz"
      sha256 "fbd9fef93bb342836dc706866315866229975d6d001965fcc7ed3b706fbbb2d0" 
      def install
        bin.install "zerotest-darwin-arm64" => "zerotest"
      end
    end

    on_intel do
      url "https://github.com/scopophobic/ZeroTest/releases/download/v0.1.2/zerotest-darwin-amd64.tar.gz"
      sha256 "5a30c240791db532325dc6975db0177df880e216a56388fa0c922c685217fed2"

      def install
        bin.install "zerotest-darwin-amd64" => "zerotest"
      end
    end
  end

  on_linux do
    url "https://github.com/scopophobic/ZeroTest/releases/download/v0.1.2/zerotest-linux-amd64.tar.gz"
    sha256 "ae1b4320948fecc0d5926ef1fb115cb660a13e640e72f5699071c3ab1b529300"
    def install
      bin.install "zerotest-linux-amd64" => "zerotest"
    end
  end

  test do
    system "#{bin}/zerotest","-v"
  end
end 


