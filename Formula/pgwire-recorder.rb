class PgwireRecorder < Formula
  desc "Zeichnet PostgreSQL-Protokollverkehr auf und spielt ihn wieder ab"
  homepage "https://github.com/pt9912/pgwire-recorder"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pt9912/pgwire-recorder/releases/download/v0.1.1/pgwire-recorder-darwin-arm64"
      sha256 "a3971338cb31adc12a427c160b3ae4522aaba095b7e0211d371817ca22168db5"
    end
    on_intel do
      url "https://github.com/pt9912/pgwire-recorder/releases/download/v0.1.1/pgwire-recorder-darwin-amd64"
      sha256 "abd8ac49ea773e5693f7d2a6ddadaca1d72a3102756465b951e9d2303242fa6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pt9912/pgwire-recorder/releases/download/v0.1.1/pgwire-recorder-linux-arm64"
      sha256 "c7ca2ca078a1d765f92ce22963baec4777dd5e280c78c68fe778a2a8d2c18ae4"
    end
    on_intel do
      url "https://github.com/pt9912/pgwire-recorder/releases/download/v0.1.1/pgwire-recorder-linux-amd64"
      sha256 "25a44ceb4ba604725ab4b2349b7ff664a1077f83937820584e5234a7eba2965c"
    end
  end

  def install
    bin.install Dir["pgwire-recorder-*"].fetch(0) => "pgwire-recorder"
  end

  test do
    assert_match "pgwire-recorder #{version}", shell_output("#{bin}/pgwire-recorder version")
  end
end
