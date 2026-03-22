# Afterburner · Fogburn

> **International Orange** color themes for developers — built around [International Orange (Aerospace)](https://en.wikipedia.org/wiki/International_orange#Aerospace) `#FF4F00`, the color of NASA flight suits, the Bell X-1, and Chuck Yeager's sound barrier run.

---

<div align="center">

![Afterburner dark preview](https://raw.githubusercontent.com/dssgabriel/afterburner/tree/main/assets/afterburner-preview.png)

**Afterburner** (dark) · **Fogburn** (light)

</div>

---

## The colors

Two variants, one identity. The accent is always International Orange. The backgrounds change; the character doesn't.

| | Afterburner (dark) | Fogburn (light) |
|---|---|---|
| **Background** | `#0D0D0D` | `#F5F0EB` |
| **Foreground** | `#E0E0E0` | `#2A2218` |
| **Primary** | `#FF4F00` | `#C94000` |
| **Orange mid** | `#FF7A33` | `#D45A00` |
| **Orange pale** | `#FFB380` | `#B87040` |
| **Cursor** | `#CC3F00` | `#A33200` |
| **Selection** | `#2A1500` | `#EDE5DC` |
| **Red (Engineering)** | `#BA160C` | `#BA160C` |
| **Green** | `#5FBF7E` | `#2E7D4F` |
| **Amber** | `#E09B30` | `#9A6A10` |
| **Teal** | `#4DBFA8` | `#2D8C7A` |
| **Blue** | `#4A8AB5` | `#2A6A9A` |
| **Purple** | `#A07DE0` | `#7058C0` |
| **Warm gray** | `#A89888` | `#A89888` |

### Why two oranges?

The **primary accent** is [International Orange (Aerospace)](https://en.wikipedia.org/wiki/International_orange#Aerospace) `#FF4F00` — used on NASA flight suits, the Bell X-1, and search-and-rescue equipment. It was chosen for *conspicuity*: maximum visibility against any background.

The **error/red** is [International Orange (Engineering)](https://en.wikipedia.org/wiki/International_orange#Engineering) `#BA160C` — the color of the Golden Gate Bridge. Same family, different application. Danger signals stay semantically distinct from the accent without reaching for an unrelated hue.

---

## Name lore

**Afterburner** — the dark theme. Raw combustion that ignites the dark. Named for the mechanical process itself.

**Fogburn** — the light theme. The moment morning fog catches the sun over the Golden Gate Bridge, and warm orange light bleeds through cool white atmosphere. Named for [Irving Morrow](https://en.wikipedia.org/wiki/Irving_Morrow), the architect who chose International Orange for the bridge after workers fell in love with the red lead primer coat.

The ANSI "bright yellow" slot (11) carries `#FF4F00` in both themes — so keywords, prompts, and the `❯` glyph all resolve to International Orange wherever your shell or editor uses that slot.

---

## Installations

### Ghostty

```
~/.config/ghostty/themes/afterburner
~/.config/ghostty/themes/fogburn
```

```ini
# ghostty.conf
theme = afterburner        # or: fogburn
```

### Helix

```
~/.config/helix/themes/afterburner.toml
~/.config/helix/themes/fogburn.toml
```

```toml
# config.toml
theme = "afterburner"      # or: "fogburn"
```

### Sublime Text

```
~/Library/Application Support/Sublime Text/Packages/User/Afterburner.tmTheme
~/Library/Application Support/Sublime Text/Packages/User/Fogburn.tmTheme
```

Select via **Preferences → Color Scheme**.

### Fish shell

```
~/.config/fish/conf.d/afterburner.fish
~/.config/fish/conf.d/fogburn.fish
```

Source whichever matches your terminal background. The prompt function captures `$status` as its first line — no exit-code bleed.

### Starship

```
~/.config/starship.toml
```

Prompt colors follow the same orange hierarchy: directory in full `#FF4F00` bold, username in orange mid, hostname in orange dark, git branch in cursor orange. Error glyph uses `#BA160C` (Engineering) to match the error semantic across all configs.

### Eza

```
~/.config/eza/theme.yml
```

Single file works with both Afterburner and Fogburn — colors are mid-range hex values that maintain legibility on both `#0D0D0D` and `#F5F0EB`. Directory entries are bold orange; file sizes run a heat ramp (pale → orange → red as size grows); git status follows the standard green/orange/red semantic.

### OpenCode

```
~/.config/opencode/themes/afterburner-fogburn.json
```

```json
// tui.json
{ "theme": "afterburner-fogburn" }
```

Single file with genuine `dark`/`light` splits per key — OpenCode auto-selects based on detected terminal background. No need to maintain two files.

---

## Design decisions

### Syntax hierarchy

Keywords own the full `#FF4F00`. Functions step back to amber `#E09B30` italic. Types recede further to warm gray `#A89888` italic — after tuning against C++ codebases where `std::`, `int`, and `void` would otherwise compete with `template` and `using` for the same visual weight. Strings take orange mid `#FF7A33`. Numbers take teal `#4DBFA8` — the furthest hue from orange in the palette, providing instant differentiation.

### The warm gray

`#A89888` — used for `storage.type` builtins, namespaces, and warm-neutral UI text. Not cold gray (`#888888`), not full orange. It sits in the same color temperature as the background and accent, so recessed elements feel like they belong rather than being imposed from a different palette.

### Light theme background

`#F5F0EB` rather than `#FFFFFF`. Pure white against `#FF4F00` halates — the orange blooms optically against a stark white field. The warm off-white pulls the background toward the accent's own undertone. The same logic applies to the near-black `#0D0D0D` in the dark theme: pure black makes high-saturation warm colors feel harsh.

### Error color

`#BA160C` stays identical in both variants — it already sits at the correct contrast ratio on both backgrounds, and changing it would break cross-theme semantic consistency. It's the one color in the suite that doesn't need a light/dark split.

---

## File inventory

| File | Target |
|---|---|
| `afterburner-ghostty` | Ghostty theme (dark) |
| `fogburn-ghostty` | Ghostty theme (light) |
| `afterburner.toml` | Helix theme (dark) |
| `fogburn.toml` | Helix theme (light) |
| `Afterburner.tmTheme` | Sublime Text (dark) |
| `Fogburn.tmTheme` | Sublime Text (light) |
| `afterburner.fish` | Fish shell + prompt (dark) |
| `fogburn.fish` | Fish shell + prompt (light) |
| `starship.toml` | Starship prompt (both variants) |
| `theme.yml` | Eza file listing (both variants) |
| `afterburner-fogburn.json` | OpenCode TUI (auto dark/light) |

---

## Credits

- [International Orange (Aerospace)](https://en.wikipedia.org/wiki/International_orange#Aerospace) — `#FF4F00`
- [International Orange (Engineering)](https://en.wikipedia.org/wiki/International_orange#Engineering) — `#BA160C`
- Irving Morrow — architect of the Golden Gate Bridge, who chose the color
- Chuck Yeager — who flew the Bell X-1 through the sound barrier in an orange rocket plane on October 14, 1947

---

<div align="center">

*"The color was chosen for its visibility."*

</div>
