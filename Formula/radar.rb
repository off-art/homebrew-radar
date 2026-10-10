class Radar < Formula
  desc "Терминальный мультиплексор для AI-агентов: список агентов, статусы, уведомления"
  homepage "https://github.com/off-art/radar"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.12/radar-aarch64-apple-darwin.tar.gz"
      sha256 "16d868ac1ad5eaf7ac68b884e0c74292b9c88aadb03ab38f826ad970f9810188"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.12/radar-x86_64-apple-darwin.tar.gz"
      sha256 "d0bcef9825ba8f2af109ae673172a5a388381fb506fcc49ebb62954d49bc05df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/off-art/radar/releases/download/v0.6.12/radar-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a18d5268a98ecbfcc83e580f4ba21a0ea8435773d7fdc16adfdf26f3eac123c"
    end
    on_intel do
      url "https://github.com/off-art/radar/releases/download/v0.6.12/radar-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "415860ae7dbbee4c0a7e4db2ff36725c79d468f66655b246304abc18ce9cf018"
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
