class ClaudeAiRelay < Formula
  desc "claude.ai connectors as MCP tools in API-key sessions"
  homepage "https://github.com/andromedarabbit/claude-ai-relay"
  version "0.3.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/andromedarabbit/claude-ai-relay/releases/download/v0.3.0/claude-ai-relay_darwin_arm64.tar.gz"
  sha256 "aa4ccf57fce99e732c6ceaeb6af6f6bf7c6854d939bf307d5b89da7928741591"

  def install
    bin.install "claude-ai-relay"
  end

  test do
    system bin/"claude-ai-relay", "selfcheck"
  end
end
