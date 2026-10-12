class Radar < Formula
  desc "Терминальный мультиплексор для AI-агентов: список агентов, статусы, уведомления"
  homepage "https://github.com/off-art/radar"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.7.2/radar-aarch64-apple-darwin.tar.gz"
      sha256 "57fb3d7fdc09d4b3aa72267b5a5e88ba2a58ee1539b7b7247db94f50d63dff39"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.7.2/radar-x86_64-apple-darwin.tar.gz"
      sha256 "ed7d3075eda622b39e71ffae429bd43ab6dbce127f8dcb229fdc41263e38c1ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.7.2/radar-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2428652687f69128fd65d4566dddb931c8abc24c52947dcadaeea418af83b970"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.7.2/radar-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48b112e56fd1f301da3fcd20dd67bc525b7a86f3891a8c8dd52fcf6de06bb233"
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
