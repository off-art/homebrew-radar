class Radar < Formula
  desc "Терминальный мультиплексор для AI-агентов: список агентов, статусы, уведомления"
  homepage "https://github.com/off-art/radar"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.9/radar-aarch64-apple-darwin.tar.gz"
      sha256 "d2a949f47dedafb76c421ec72358dc8131baa008289937d959c10a077acaccfd"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.9/radar-x86_64-apple-darwin.tar.gz"
      sha256 "ba32253b4e3d9ae2dd429fa0bdbcac5a65f6d41562fb42e0d157640275f7b0c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.9/radar-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c7b62049f0357c14c2045e1a98cb0161d3c83c6e8f44a213f650165bd0d0888"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.9/radar-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bda3089c939a0e6c324581802f788f1851b8e14597241c0651f73835a573b137"
    end
  end

  def install
    bin.install "radar"
  end

  def caveats
    <<~EOS
      Обновление: brew update && brew upgrade radar
      Проверка агентов: radar doctor
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/radar --version")
  end
end
