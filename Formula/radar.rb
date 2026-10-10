class Radar < Formula
  desc "Терминальный мультиплексор для AI-агентов: список агентов, статусы, уведомления"
  homepage "https://github.com/off-art/radar"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.7.0/radar-aarch64-apple-darwin.tar.gz"
      sha256 "ca99091865ed52b093068babf808d2589409c6551cb06a5fbeb9bf2f0422c149"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.7.0/radar-x86_64-apple-darwin.tar.gz"
      sha256 "cefbde96d32d5759026272c451d2f66ff9fb57b451efc73cf214bd6ae165bb92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.7.0/radar-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4b69765a3726413826826e0288ea33b7cec19db0c4ba355a68dc1d7f56957a9"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.7.0/radar-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a83b789ba560de286816614386f804bf65c6f5e2b85118871a0e5c1792b3c8bb"
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
