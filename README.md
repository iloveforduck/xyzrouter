<div align="center">

<img src="./images/xyzrouter.png" width="140" alt="XyzRouter Logo"/>

# ⚡ XyzRouter

**Route every AI coding tool to 40+ providers and 100+ models — with smart failover, format translation and RTK token savings.**

Claude Code · Codex · Cursor · Copilot · Cline · OpenCode · Gemini CLI · Antigravity ... → **one endpoint**

[![Version](https://img.shields.io/badge/version-0.5.99-8b5cf6?style=flat-square)](CHANGELOG.md)
[![Node](https://img.shields.io/badge/node-18+-339933?style=flat-square&logo=node.js&logoColor=white)](https://nodejs.org)
[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)](LICENSE)
[![Docker](https://img.shields.io/badge/docker-xyz%2Fxyzrouter-2496ED?style=flat-square&logo=docker&logoColor=white)](https://hub.docker.com/r/xyz/xyzrouter)
[![npm](https://img.shields.io/npm/v/xyzrouter.svg?style=flat-square&logo=npm&logoColor=white)](https://www.npmjs.com/package/xyzrouter)
[![Downloads](https://img.shields.io/npm/dm/xyzrouter.svg?style=flat-square)](https://www.npmjs.com/package/xyzrouter)
[![GitHub last commit](https://img.shields.io/github/last-commit/iloveforduck/xyzrouter?style=flat-square)](https://github.com/iloveforduck/xyzrouter/commits/master)

**English** · [简体中文](README.zh-CN.md) · [Vietnamese](gitbook/content/vi/) · [日本語](gitbook/content/ja/) · [Español](gitbook/content/es/)

[![Stars](https://img.shields.io/github/stars/iloveforduck/xyzrouter?style=social)](https://github.com/iloveforduck/xyzrouter/stargazers)
[![Forks](https://img.shields.io/github/forks/iloveforduck/xyzrouter?style=social)](https://github.com/iloveforduck/xyzrouter/network/members)

</div>

---

<!-- TOC -->
## 📑 Table of Contents

- [🤔 Why XyzRouter?](#-why-xyzrouter)
- [🔄 How It Works](#-how-it-works)
- [✨ Key Features](#-key-features)
- [🌐 Providers](#-providers)
- [🛠️ Supported CLI Tools](#-supported-cli-tools)
- [⚡ Quick Start](#-quick-start)
- [🎯 Use Cases](#-use-cases)
- [🧑‍💻 CLI Reference](#-cli-reference)
- [📖 Setup Guides](#-setup-guides)
- [🔧 Configuration](#-configuration)
- [📊 API Reference](#-api-reference)
- [🧩 Agent Skills](#-agent-skills)
- [🧪 Tech Stack](#-tech-stack)
- [🗺️ Roadmap](#-roadmap)
- [🤝 Contributing](#-contributing)
- [📮 Community & Support](#-community--support)

---

## 🤔 Why XyzRouter?

You pay for a Claude Pro subscription… then hit the rate limit mid-session. Your GLM credits expire. Your API budget melts. Sound familiar?

**XyzRouter puts an end to all of that:**

| 😩 Without XyzRouter | 😎 With XyzRouter |
|---|---|
| Locked into one provider & one quota | Auto-failover across **40+ providers** |
| Pay-per-token even when you have unused subscriptions | Use your **subscriptions first**, cheap APIs as backup |
| Each CLI tool needs its own config & keys | **One OpenAI-compatible endpoint** for every tool |
| Claude ↔ OpenAI formats don't mix | **Real-time format translation** between them |
| Long context = 💸 burning tokens | **RTK Token Saver** compresses prompts automatically |

## 🔄 How It Works

```
┌─────────────┐      ┌──────────────────────────────────────┐
│  Your CLI   │      │             XyzRouter                │
│ Claude Code │─────▶│  • OpenAI-compatible API (:20128/v1) │
│ Codex       │      │  • Format translation (OpenAI↔Claude)│
│ Cursor      │      │  • Smart 3-tier routing              │
│ Cline       │◀─────│  • RTK token compression             │
│ ...         │      │  • Real-time quota tracking          │
└─────────────┘      └───────────────┬──────────────────────┘
                                     │
                    ┌────────────────┼─────────────────┐
                    ▼                ▼                 ▼
            [Tier 1: Subs]   [Tier 2: Cheap APIs]  [Tier 3: Free]
            Claude Code,     GLM ($0.6/1M),        Kiro AI,
            Codex, Copilot   MiniMax ($0.2/1M)     OpenCode Free,
                                                   Vertex AI credits
```

When one provider is rate-limited or down, XyzRouter **switches transparently** — your CLI never notices.

## ✨ Key Features

- 🎯 **Smart 3-Tier Failover** — subscriptions → low-cost APIs → free tiers, in priority order you control
- 🔀 **Format Translation** — OpenAI ↔ Claude ↔ Gemini payloads converted on the fly
- 💰 **RTK Token Saver** — compresses system prompts & context; cuts token usage dramatically
- 📊 **Live Quota Tracking** — see remaining credits/tokens per provider in the dashboard
- 👥 **Multi-Account Rotation** — pool multiple accounts per provider with auto token refresh
- 🧩 **Custom Combos** — build model chains like `kr/claude-sonnet-4.5 → glm/glm-5 → mm/M2.7`
- 📝 **Request Logs** — full visibility into every routed request/response
- ☁️ **Cloud Sync** — sync config & credentials across machines
- 🌍 **Deploy Anywhere** — localhost, VPS, Docker, or serverless platforms

## 🌐 Providers

**🔐 OAuth (subscription-based):** Claude Code · Antigravity · Codex · GitHub Copilot · Cursor

**🆓 Free tiers:** Kiro AI *(Claude 4.5 + GLM-5 + MiniMax, ~50 credits/mo)* · OpenCode Free *(no auth needed)* · Vertex AI *($300 new-account credit)*

**🔑 API-key providers (40+):** Anthropic · OpenAI · Google Gemini · DeepSeek · Moonshot Kimi · Zhipu GLM · MiniMax · Mistral · Groq · Together · Fireworks · Cerebras · Cohere · xAI · Perplexity · NVIDIA · SiliconFlow · OpenRouter · and more…

## 🛠️ Supported CLI Tools

Claude Code · OpenAI Codex CLI · GitHub Copilot · Cursor IDE · Cline · Continue · RooCode · OpenCode · OpenClaw · Aider · and any tool that speaks the OpenAI API

## ⚡ Quick Start

**1. Install & run:**

```bash
npm install -g xyzrouter
xyzrouter
```

🎉 Dashboard opens at `http://localhost:20128`

**2. Connect a free provider (no signup required):**

Dashboard → Providers → connect **Kiro AI** or **OpenCode Free** → done!

**3. Point your CLI tools at it:**

```
Endpoint: http://localhost:20128/v1
API Key:  [copy from the dashboard]
Model:    kr/claude-sonnet-4.5
```

**Alternative — run from source (this repo):**

```bash
cp .env.example .env
npm install
PORT=20128 NEXT_PUBLIC_BASE_URL=http://localhost:20128 npm run dev
```

Production:

```bash
npm run build
PORT=20128 HOSTNAME=0.0.0.0 npm run start
```

**Docker:**

```bash
docker run -d \
  -p 20128:20128 \
  -v "$HOME/.xyzrouter:/app/data" \
  --name xyzrouter \
  xyz/xyzrouter:latest
```

Also available on **GHCR**: `ghcr.io/xyz/xyzrouter` (multi-platform, amd64/arm64).

Default URLs:
- Dashboard: `http://localhost:20128/dashboard`
- OpenAI-compatible API: `http://localhost:20128/v1`

## 🧑‍💻 CLI Reference

The `xyzrouter` binary ships with the npm package:

```bash
xyzrouter                    # Start server + open dashboard
xyzrouter --port 8080        # Custom port (alias: -p)
xyzrouter --no-browser       # Don't auto-open the browser
xyzrouter --skip-update      # Skip the auto-update check
xyzrouter --help             # All options

# Point local CLI tools at a remote XyzRouter (no local server started):
npx xyzrouter connect http://<server-host>:20128 --tools claude,codex
npx xyzrouter connect --reset --tools claude     # undo

# Inspect what each tool on this machine is currently configured to:
npx xyzrouter show                 # every supported tool
npx xyzrouter show claude --json   # machine-readable
```

Supported tools for `connect`: `claude`, `codex`, `opencode`, `droid`, `crush`, `kilo`, `cline`, `pi`, `omp`, or `all`. Original configs are backed up once as `*.bak-xyzrouter`. Password can be passed via `--password` or `XYZROUTER_PASSWORD`.

Full details: [`cli/README.md`](cli/README.md)

## 🎯 Use Cases

**"I have a Claude Pro subscription"** → Route everything through your sub (tier 1); GLM/MiniMax kick in automatically when you hit limits. Zero extra cost.

**"I want $0 forever"** → Chain only free providers (Kiro + OpenCode Free + Vertex credits). Fully working AI coding stack for nothing.

**"I code 24/7 and can't afford downtime"** → Multi-account rotation + instant failover = your tools never stop.

## 📖 Setup Guides

Detailed per-tool guides live in [`docs/`](docs/) and the [GitBook](gitbook/). Quick reference:

| Tool | Endpoint | Model example |
|---|---|---|
| Claude Code | `http://localhost:20128` (ANTHROPIC_BASE_URL) | `kr/claude-sonnet-4.5` |
| Codex CLI | `http://localhost:20128/v1` | `cx/gpt-5` |
| Cursor / Cline / Continue | `http://localhost:20128/v1` | any combo |

## 🔧 Configuration

Key environment variables (full list in [.env.example](.env.example)):

| Variable | Default | Description |
|---|---|---|
| `PORT` | `20128` | Server port |
| `DATA_DIR` | `~/.xyzrouter` | Database & credentials location |
| `JWT_SECRET` | auto-generated | Dashboard auth signing key |
| `INITIAL_PASSWORD` | `123456` | First-login password |
| `REQUIRE_API_KEY` | `false` | Enforce Bearer keys on `/v1/*` (recommended for internet-facing deploys) |
| `ENABLE_REQUEST_LOGS` | `false` | Log requests/responses under `logs/` |
| `HTTP_PROXY` / `HTTPS_PROXY` | — | Optional outbound proxy for upstream calls |
| `XYZROUTER_GOOGLE_CLIENT_ID` / `..._SECRET` | — | OAuth client credentials for Google/Antigravity flows |

## 📊 API Reference

```bash
# List available models
curl http://localhost:20128/v1/models -H "Authorization: Bearer $XYZROUTER_API_KEY"

# Chat completion (OpenAI format)
curl http://localhost:20128/v1/chat/completions \
  -H "Authorization: Bearer $XYZROUTER_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model": "kr/claude-sonnet-4.5", "messages": [{"role":"user","content":"hi"}]}'

# Claude-format messages endpoint (auto-translated)
curl http://localhost:20128/v1/messages \
  -H "x-api-key: $XYZROUTER_API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  -H "Content-Type: application/json" \
  -d '{"model": "kr/claude-sonnet-4.5", "max_tokens": 64, "messages": [{"role":"user","content":"hi"}]}'
```

| Endpoint | Format | Purpose |
|---|---|---|
| `POST /v1/chat/completions` | OpenAI | Chat (streaming supported) |
| `POST /v1/messages` | Anthropic | Claude-native clients |
| `GET /v1/models` | OpenAI | List routed models & combos |
| `POST /v1/embeddings` | OpenAI | Embeddings via compatible providers |

## 🧩 Agent Skills

XyzRouter ships ready-made [skills](skills/) for AI coding agents — drop them into your agent's skills folder and it can call the router directly:

`xyzrouter` · `xyzrouter-chat` · `xyzrouter-embeddings` · `xyzrouter-image` · `xyzrouter-stt` · `xyzrouter-tts` · `xyzrouter-video` · `xyzrouter-web-fetch` · `xyzrouter-web-search`

## 🧪 Tech Stack

Next.js 16 · React 19 · SQLite-style JSON store · Native fetch streaming · Playwright-tested

## 🗺️ Roadmap

- [ ] Provider health scoring & adaptive routing
- [ ] Streaming usage metering per combo
- [ ] Plugin SDK for custom transformers
- [ ] One-click deploy templates (Vercel / Fly.io / Railway)

## 🤝 Contributing

Contributions are welcome! Here's the fastest path:

1. Fork the repo and create a branch from `master`
2. Install deps: `npm install && cp .env.example .env`
3. Run the dev server: `PORT=20128 npm run dev`
4. Test your changes — the suite is Playwright-based (`xyzrouter-tests`)
5. Open a PR with a clear description of *what* and *why*

For bigger ideas, open an issue first so we can align before you write code.
Architecture deep-dive: [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md)

## 📮 Community & Support

| Need | Where |
|---|---|
| 🐛 Bug report | [GitHub Issues](https://github.com/iloveforduck/xyzrouter/issues) |
| 💡 Feature request | [GitHub Discussions](https://github.com/iloveforduck/xyzrouter/discussions) |
| 📖 Full documentation | [gitbook/](gitbook/) · multilingual (EN · 中文 · 한국어 · ES · VI · JA) |
| 🔒 Security issue | Please **do not** open a public issue — contact the maintainers privately |

**Star history matters to us** — if this tool saves you tokens, drop a ⭐ on [iloveforduck/xyzrouter](https://github.com/iloveforduck/xyzrouter).

## 🙏 Acknowledgments

XyzRouter is a complete rebrand of an open-source project distributed under the MIT License — we thank its original authors and contributors. See [LICENSE](LICENSE) and [CHANGELOG.md](CHANGELOG.md).

## 📄 License

[MIT](LICENSE)

---

<div align="center">

**Made with ❤️ by developers, for developers.**

If XyzRouter saved your quota today — star it ⭐

</div>
