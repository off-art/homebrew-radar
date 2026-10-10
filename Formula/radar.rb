class Radar < Formula
  desc "Терминальный мультиплексор для AI-агентов: список агентов, статусы, уведомления"
  homepage "https://github.com/off-art/radar"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.11/radar-aarch64-apple-darwin.tar.gz"
      sha256 "da8557ae81a0798f1c888b25bb1ea960f78ae0b1e21b63fa992776db3f26ff87"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.11/radar-x86_64-apple-darwin.tar.gz"
      sha256 "bb55786a89f49b8b977f437e688473a46692d734c23646f2dbe1321bd09f763d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.11/radar-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62f6e4376b1ab450f5fcb6d385b4462bd69910756e8fe4a22b7fdf4f711f377e"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.11/radar-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7abbdd6b073fc15fab63ee4d0c93b08be97fcb94ef2b6c199bd18b4ec5b648f9"
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
