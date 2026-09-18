# 🎨 Console-Colors.ps1

![PowerShell](https://img.shields.io/badge/PowerShell-5.1-5391FE?logo=powershell&logoColor=white)
![Platform](https://img.shields.io/badge/platform-Windows-0078D6?logo=windows&logoColor=white)
![Script](https://img.shields.io/badge/type-.ps1-lightgrey)

A tiny PowerShell script that displays **every console color available in PowerShell** — each one rendered as a color swatch next to its name — so you can quickly pick the right `-ForegroundColor` / `-BackgroundColor` for your own scripts.

---

## 📸 Preview

<img width="211" height="275" alt="Image" src="https://github.com/user-attachments/assets/d15670d4-e363-4619-80f6-ea352c805664" />

## ✨ Features

- Lists all **16 colors** from the `[System.ConsoleColor]` enumeration
- Shows each color as a **background swatch** and as **colored text** with its exact name
- Zero dependencies — pure PowerShell, a single file
- Automatically relaunches in **PowerShell ISE** when started from the regular console

---

## 📋 Requirements

| Requirement | Details |
|---|---|
| OS | Windows |
| PowerShell | Windows PowerShell **5.1** (includes PowerShell ISE) |
| Execution policy | Must allow running local scripts (see [Troubleshooting](#-troubleshooting)) |

> ℹ️ PowerShell ISE is **not** available in PowerShell 7+, so the script must be used with Windows PowerShell.

---

## 🚀 Installation

Clone the repository:

```powershell
git clone https://github.com/Herzz09/Console-Colors-.ps1.git
cd Console-Colors-.ps1
```

Or simply download `Console-Colors.ps1` directly from the repository page.

---

## ▶️ Usage

**Option 1 — Inside PowerShell ISE (recommended)**

1. Open `Console-Colors.ps1` in PowerShell ISE.
2. Press **F5** to run.

**Option 2 — From the regular console**

```powershell
.\Console-Colors.ps1
```

When the script detects it is **not** running inside ISE, it shows an error message, opens itself in PowerShell ISE and exits. Press **F5** in ISE to see the colors.

---

## 🖥️ Expected output

```text
Console Colors Powershell:

        => Black
        => DarkBlue
        => DarkGreen
        => DarkCyan
        => DarkRed
        => DarkMagenta
        => DarkYellow
        => Gray
        => DarkGray
        => Blue
        => Green
        => Cyan
        => Red
        => Magenta
        => Yellow
        => White
```

*(In the real output, each blank area is painted with its color and each name is written in that same color.)*

---

## 🎯 Color reference

| # | Color | # | Color |
|---|---|---|---|
| 0 | `Black` | 8 | `DarkGray` |
| 1 | `DarkBlue` | 9 | `Blue` |
| 2 | `DarkGreen` | 10 | `Green` |
| 3 | `DarkCyan` | 11 | `Cyan` |
| 4 | `DarkRed` | 12 | `Red` |
| 5 | `DarkMagenta` | 13 | `Magenta` |
| 6 | `DarkYellow` | 14 | `Yellow` |
| 7 | `Gray` | 15 | `White` |

Using them in your own scripts:

```powershell
Write-Host "Hello, world!" -ForegroundColor Cyan -BackgroundColor DarkBlue
```

---

## ⚙️ How it works

The core of the script loops through every value of the `ConsoleColor` enum and prints a swatch followed by the color name:

```powershell
foreach ($color in [enum]::GetValues([System.ConsoleColor])) {
    Write-Host "`t`t" -B $color -NoNewline      # colored swatch (background)
    Write-Host " => $color" -F $color            # color name (foreground)
}
```

Quick legend used in the script:

| Symbol | Meaning |
|---|---|
| `` `t `` | Tab |
| `-B` | `-BackgroundColor` |
| `-F` | `-ForegroundColor` |

---

## 🛠️ Troubleshooting

**"Running scripts is disabled on this system"**
Allow scripts for the current session only:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\Console-Colors.ps1
```

**Some colors look invisible or too faint**
The swatches and text are drawn on top of your host's own background. If a color matches your ISE/console theme (for example `White` on a white background), it will blend in. This is a theme effect, not a script error.

---

## 📁 Project structure

```text
Console-Colors-.ps1/
├── Console-Colors.ps1   # the script
├── .gitattributes
└── README.md
```

---

## 👤 Author

**Herzz09** — [github.com/Herzz09](https://github.com/Herzz09)

Feel free to open an [issue](https://github.com/Herzz09/Console-Colors-.ps1/issues) with suggestions or improvements. ⭐ If this was useful, consider starring the repo!
