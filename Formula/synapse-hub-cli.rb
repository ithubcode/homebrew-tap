class SynapseHubCli < Formula
  desc "Local-first MCP memory system for AI coding agents"
  homepage "https://github.com/ithubcode/synapse-hub-ai"
  license "MIT"
  head "https://github.com/ithubcode/synapse-hub-ai.git", branch: "main"

  depends_on "go" => :build

  def install
    cd "cmd/synapse-hub-cli" do
      system "go", "build", "-ldflags=-w -s", "-o", bin/"synapse-hub-cli"
    end
  end

  test do
    assert_match "Synapse Hub CLI", shell_output("#{bin}/synapse-hub-cli --help")
  end
end
