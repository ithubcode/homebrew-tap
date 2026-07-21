class SynapseHubCli < Formula
  desc "Local-first MCP memory system for AI coding agents"
  homepage "https://github.com/ithubcode/synapse-hub-ai"
  license "MIT"
  version "1.0.0"

  if Hardware::CPU.intel? && OS.mac?
    url "https://raw.githubusercontent.com/ithubcode/synapse-hub-releases/main/v1.0.0/synapse-hub-cli_darwin_amd64.tar.gz"
    sha256 "eed9b36e1327d353f260e28401f72d1d0389fb3710931ff85d478c0550bcc76a"
  elsif Hardware::CPU.arm? && OS.mac?
    url "https://raw.githubusercontent.com/ithubcode/synapse-hub-releases/main/v1.0.0/synapse-hub-cli_darwin_arm64.tar.gz"
    sha256 "95178d4e7a603dc2e0c3589f8968754a83e4c9d5c4a4612330a22f118397bd7d"
  elsif Hardware::CPU.intel? && OS.linux?
    url "https://raw.githubusercontent.com/ithubcode/synapse-hub-releases/main/v1.0.0/synapse-hub-cli_linux_amd64.tar.gz"
    sha256 "439b476ca1eb87e6af6cc06d0757bea084e83b1ea8e665f0c7d3b452a4fc18e5"
  elsif Hardware::CPU.arm? && OS.linux?
    url "https://raw.githubusercontent.com/ithubcode/synapse-hub-releases/main/v1.0.0/synapse-hub-cli_linux_arm64.tar.gz"
    sha256 "f1ca882ceed37b8afb130125700b71ee3821b3b78bf89b5b9b3258a15c6e1c82"
  end

  def install
    bin.install "synapse-hub-cli"
  end

  test do
    assert_match "Synapse Hub CLI", shell_output("#{bin}/synapse-hub-cli --help")
  end
end
