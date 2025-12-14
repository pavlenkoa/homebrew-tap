class Vsg < Formula
  desc "Vault Secrets Generator - CLI tool for managing secrets in HashiCorp Vault"
  homepage "https://github.com/pavlenkoa/vault-secrets-generator"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/pavlenkoa/vault-secrets-generator/releases/download/v#{version}/vsg_#{version}_darwin_amd64.tar.gz"
      sha256 "93acf183b48e1580cc6982ab59aee1c165a2871281d0eedb920048cc4af40c75"
    end
    on_arm do
      url "https://github.com/pavlenkoa/vault-secrets-generator/releases/download/v#{version}/vsg_#{version}_darwin_arm64.tar.gz"
      sha256 "1141ead8b54b6d228f5ad35f976698e7961904acad9f25742a403e5656c514e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pavlenkoa/vault-secrets-generator/releases/download/v#{version}/vsg_#{version}_linux_amd64.tar.gz"
      sha256 "1f3e589e59c5ed999cf188e3cbd84e61a2b1530dd7103ae38773af070b2b3b16"
    end
    on_arm do
      url "https://github.com/pavlenkoa/vault-secrets-generator/releases/download/v#{version}/vsg_#{version}_linux_arm64.tar.gz"
      sha256 "8e2a59367aaab1db1a1d4231836559522026e201ad680cccc1d8acb6d1302aa6"
    end
  end

  def install
    bin.install "vsg"
  end

  test do
    assert_match "vsg version", shell_output("#{bin}/vsg version")
  end
end
