class ClaudeAiRelay < Formula
  desc "claude.ai connectors as MCP tools in API-key sessions"
  homepage "https://github.com/andromedarabbit/claude-ai-relay"
  version "0.3.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/andromedarabbit/claude-ai-relay/releases/download/v0.3.2/claude-ai-relay_darwin_arm64.tar.gz"
  sha256 "e6d1c6d6bc30db3f68ee1a095f5cf45bbd4ddb01f7a753972abc10dc7dce3044"

  def install
    bin.install "claude-ai-relay"
  end

  test do
    system bin/"claude-ai-relay", "selfcheck"
  end
end
