class Radar < Formula
  desc "Терминальный мультиплексор для AI-агентов: список агентов, статусы, уведомления"
  homepage "https://github.com/off-art/radar"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.7.1/radar-aarch64-apple-darwin.tar.gz"
      sha256 "c58026e439cb02e62c1019896f6533de879308f1217f5a07c25ef3b89f59ccfd"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.7.1/radar-x86_64-apple-darwin.tar.gz"
      sha256 "8163cf13bc2725c43ec0d20bcaa2835960e4b380d106176a0276cb266a0474d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.7.1/radar-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57ade8ec87aae0369098765f84752eccaf761a6892ae5f30c11d32de77b923fc"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.7.1/radar-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7be73d26015d7898d40b5ff3fdc61253c48c348eee9602c5907e26def7488df"
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
