class PgwireRecorder < Formula
  desc "Zeichnet PostgreSQL-Protokollverkehr auf und spielt ihn wieder ab"
  homepage "https://github.com/pt9912/pgwire-recorder"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pt9912/pgwire-recorder/releases/download/v0.2.0/pgwire-recorder-darwin-arm64"
      sha256 "7e43a883feaf26af43247dea7b4167354e9144ad8dac2e67c3f2c61a1189c0c0"
    end
    on_intel do
      url "https://github.com/pt9912/pgwire-recorder/releases/download/v0.2.0/pgwire-recorder-darwin-amd64"
      sha256 "745313db244bdf62d0df4830c413806798c7741e61876e91714d54bfd5ea5327"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pt9912/pgwire-recorder/releases/download/v0.2.0/pgwire-recorder-linux-arm64"
      sha256 "8e39788988551d3e6ef0e45444e4c4b90cf33bdeb9dd8d795d028b5ff05d7757"
    end
    on_intel do
      url "https://github.com/pt9912/pgwire-recorder/releases/download/v0.2.0/pgwire-recorder-linux-amd64"
      sha256 "4177b046f5dc5a7d08de45ae3e135b91418d3e160d10f99b27a48e63a93a1467"
    end
  end

  def install
    bin.install Dir["pgwire-recorder-*"].fetch(0) => "pgwire-recorder"
  end

  test do
    assert_match "pgwire-recorder #{version}", shell_output("#{bin}/pgwire-recorder version")
  end
end
