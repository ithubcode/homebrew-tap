class SynapseHubCli < Formula
  desc "Local-first MCP memory system for AI coding agents"
  homepage "https://github.com/ithubcode/synapse-hub-ai"
  license "MIT"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/ithubcode/synapse-hub-ai/releases/download/v1.0.0/synapse-hub-cli_darwin_amd64.tar.gz"
      sha256 "b4c91e70a618060e81c1c60a14d1e07974a0f94d765789de86ce778411ccefae"
    elsif Hardware::CPU.arm?
      url "https://github.com/ithubcode/synapse-hub-ai/releases/download/v1.0.0/synapse-hub-cli_darwin_arm64.tar.gz"
      sha256 "e8b1cf8e0475b76735871b3629a9b8b1f0f2725bd3a31baa01959e9399fada8a"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ithubcode/synapse-hub-ai/releases/download/v1.0.0/synapse-hub-cli_linux_amd64.tar.gz"
      sha256 "cc880995da2473d59e2d230273b326101a7ef3583f722d07926fe0b985285a67"
    elsif Hardware::CPU.arm?
      url "https://github.com/ithubcode/synapse-hub-ai/releases/download/v1.0.0/synapse-hub-cli_linux_arm64.tar.gz"
      sha256 "abfae5c4910467357e8cacc7dc775ca73c8a33671f9d8099856dd5ba6b777985"
    end
  end

  def install
    bin.install "synapse-hub-cli"
  end

  test do
    assert_match "Synapse Hub CLI", shell_output("#{bin}/synapse-hub-cli --help")
  end
end
