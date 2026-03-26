#!/usr/bin/env bash
# ============================================================
#  Claude & Codex Skills — One-Click Setup
#
#  Usage:
#    git clone <this-repo> ~/claude-skills
#    cd ~/claude-skills && bash setup.sh
#
#  Supports: Claude Code (Terminal) / VS Code Claude / Codex CLI
# ============================================================

set -euo pipefail

SKILL_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_SKILLS="$HOME/.claude/skills"
CODEX_SKILLS="$HOME/.codex/skills"

info()  { printf "\033[1;34m[INFO]\033[0m  %s\n" "$1"; }
ok()    { printf "\033[1;32m[OK]\033[0m    %s\n" "$1"; }
warn()  { printf "\033[1;33m[WARN]\033[0m  %s\n" "$1"; }

SKILL_COUNT=$(find "$SKILL_DIR" -maxdepth 2 -name "SKILL.md" -not -path "*/.system/*" 2>/dev/null | wc -l | tr -d ' ')
echo ""
echo "  ┌──────────────────────────────────────┐"
echo "  │  Claude & Codex Skills Setup         │"
echo "  │  $SKILL_COUNT skills → global install        │"
echo "  └──────────────────────────────────────┘"
echo ""

# --- Helper: create or update symlink ---
link_skills() {
    local target="$1" label="$2"
    local parent_dir
    parent_dir="$(dirname "$target")"
    mkdir -p "$parent_dir"

    if [ -L "$target" ]; then
        local current
        current=$(readlink "$target")
        if [ "$current" = "$SKILL_DIR" ]; then
            ok "$label already linked"
            return
        fi
        warn "$label pointed to $current — updating"
        rm "$target"
    elif [ -d "$target" ]; then
        # Preserve Codex .system/ if present
        if [ -d "$target/.system" ] && [ ! -d "$SKILL_DIR/.system" ]; then
            cp -r "$target/.system" "$SKILL_DIR/.system"
            info "Preserved .system/ skills"
        fi
        local backup="$target.backup.$(date +%Y%m%d%H%M%S)"
        warn "Backed up existing dir → $backup"
        mv "$target" "$backup"
    fi

    ln -s "$SKILL_DIR" "$target"
    ok "$label → $SKILL_DIR"
}

# --- Claude Code / VS Code ---
info "Setting up Claude Code..."
link_skills "$CLAUDE_SKILLS" "~/.claude/skills"

# --- Codex CLI ---
if command -v codex &>/dev/null; then
    info "Setting up Codex CLI..."
    link_skills "$CODEX_SKILLS" "~/.codex/skills"
else
    warn "Codex CLI not found — skipping (install: npm i -g @openai/codex)"
fi

# --- Verify ---
echo ""
info "Verification:"
[ -L "$CLAUDE_SKILLS" ] && ok "Claude Code / VS Code  ✓  ($SKILL_COUNT skills)"
[ -L "$CODEX_SKILLS" ] 2>/dev/null && ok "Codex CLI              ✓  ($SKILL_COUNT skills)"
echo ""
ok "Done! Restart Claude Code / Codex to load skills."
echo ""
echo "  How to use:"
echo "    Auto:   Skills trigger when conversation matches their description"
echo "    Manual: /skill-name  (e.g. /commit, /react-patterns, /fastapi-pro)"
echo ""
