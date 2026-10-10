class Radar < Formula
  desc "Терминальный мультиплексор для AI-агентов: список агентов, статусы, уведомления"
  homepage "https://github.com/off-art/radar"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.10/radar-aarch64-apple-darwin.tar.gz"
      sha256 "655ea6a02db6b0e898485016b3ed603574fb18c093da120c9bd93e28fec692c5"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.10/radar-x86_64-apple-darwin.tar.gz"
      sha256 "3181ca9f5f17c2479b40ffe04abec10c7729b0effc3f03ab619e5e5b7f21bf06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.10/radar-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f0c24d8a5a32932f6cf7ffc8cae6e76a4a252b03f0f4db95f9fd32bd5519190"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.10/radar-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b8c8beff508f7c70ac3896d10b5130689d0a88188a5938f71a243319f146dd3"
    end
  end

  def install
    bin.install "radar"
  end

  def caveats
    <<~EOS
      Обновление: brew update && brew upgrade off-art/radar/radar
      Проверка агентов: radar doctor
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/radar --version")
  end
end
