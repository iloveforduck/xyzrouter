# XyzRouter — Agent Skills

Drop-in skills for any AI agent (Claude, Cursor, ChatGPT, custom SDK). Just **copy a link** below and paste it to your AI — it will fetch the skill and use XyzRouter for you.

> Tip: start with the **xyzrouter** entry skill — it covers setup and links to all capability skills.

## Skills

| Capability | Copy link below and paste to your AI |
|---|---|
| **Entry / Setup** (start here) | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter/SKILL.md |
| Chat / code-gen | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter-chat/SKILL.md |
| Image generation | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter-image/SKILL.md |
| Video generation (xAI Grok Imagine) | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter-video/SKILL.md |
| Text-to-speech | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter-tts/SKILL.md |
| Speech-to-text | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter-stt/SKILL.md |
| Embeddings | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter-embeddings/SKILL.md |
| Web search | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter-web-search/SKILL.md |
| Web fetch (URL → markdown) | https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter-web-fetch/SKILL.md |

## How to use

Paste to your AI (Claude, Cursor, ChatGPT, …):

```
Read this skill and use it: https://raw.githubusercontent.com/xyz/xyzrouter/refs/heads/master/skills/xyzrouter/SKILL.md
```

Then ask normally — *"generate an image of a cat"*, *"transcribe this URL"*, etc.

## Configure your shell once

```bash
export XYZROUTER_URL="http://localhost:20128"   # local default, or your VPS / tunnel URL
export XYZROUTER_KEY="sk-..."                   # from Dashboard → Keys (only if requireApiKey=true)
```

Verify: `curl $XYZROUTER_URL/api/health` → `{"ok":true}`.

## Links

- Source: https://github.com/xyz/xyzrouter
- Dashboard: https://xyzrouter.com
