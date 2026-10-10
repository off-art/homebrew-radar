class Radar < Formula
  desc "Терминальный мультиплексор для AI-агентов: список агентов, статусы, уведомления"
  homepage "https://github.com/off-art/radar"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.8/radar-aarch64-apple-darwin.tar.gz"
      sha256 "40f566b6a496c8d72b108c26ef5a7f7a4fb4b3c0c796070f4d7827c972729ce7"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.8/radar-x86_64-apple-darwin.tar.gz"
      sha256 "e12d57d9a469fe761dd7a6e2a285a4b27b89dabd07ba016cf5a793491ee14b01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.8/radar-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2987e9f9e21fe50a03e701e6660ef12a0857efcc4934e55e503dbec7d44bd636"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.8/radar-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "342ef831917dc09ecf18bda8a380d5cb5c92302126dd84ce8233a5a7fd1ce2ed"
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
