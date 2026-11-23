class ClaudeAiRelay < Formula
  desc "claude.ai connectors as MCP tools in API-key sessions"
  homepage "https://github.com/andromedarabbit/claude-ai-relay"
  version "0.3.1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/andromedarabbit/claude-ai-relay/releases/download/v0.3.1/claude-ai-relay_darwin_arm64.tar.gz"
  sha256 "5a7cf53eb771f62c8a09a98ba4344fbdf6818fff41999d47c84195857cf85563"

  def install
    bin.install "claude-ai-relay"
  end

  test do
    system bin/"claude-ai-relay", "selfcheck"
  end
end
