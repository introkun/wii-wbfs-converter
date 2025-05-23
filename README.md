# Wii WBFS Converter

This is a simple command-line script to convert `.iso` Wii game backups into `.wbfs` format, ready for USB loaders like USB Loader GX or WiiFlow.

## 🎮 Features

- Converts all `.iso` files in a folder to `.wbfs`
- Automatically extracts game title and ID
- Splits large files for FAT32 compatibility
- Organizes output into proper `/wbfs/Game Title [GAMEID]/` structure

---

## 🛠 Requirements

- **macOS** or **Linux**
- [`wit`](https://wit.wiimm.de/) (Wiimms ISO Tools)

### 🔧 Install `wit`

**macOS (with Homebrew):**

```bash
brew tap hakchi-gui/hakchi
brew install wit
```

**Ubuntu/Debian-based Linux:**

```bash
sudo apt install wit
```

If `wit` is not in your package manager, download it directly from [https://wit.wiimm.de/](https://wit.wiimm.de/).

---

## 🚀 Usage

1. Clone this repository:

    ```bash
    git clone https://github.com/introkun/wii-wbfs-converter.git
    cd wii-wbfs-converter
    ```

2. Place all your `.iso` files in the script directory.

3. Make the script executable:

    ```bash
    chmod +x convert-to-wbfs.sh
    ```

4. Run the script:

    ```bash
    ./convert-to-wbfs.sh
    ```

---

## 📂 Output Structure

Converted files will be placed in a `wbfs/` subdirectory:

```
wbfs/
└── Game Title [GAMEID]/
    └── Game Title [GAMEID].wbfs
```

Each game is correctly formatted for use with USB loaders.

---

## ⚠️ Legal Disclaimer

This project does **not** contain or distribute any copyrighted
Nintendo content. It is intended for users who **legally own** the Wii
games they wish to back up and play via homebrew software.

- No ROMs or ISOs are included.
- No links to ROM sites will be provided.
- This tool only converts and organizes files you already own.

You are responsible for complying with your country's copyright laws.

---

## 📄 License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) for details.

---

## 🤝 Contributions

Pull requests, suggestions, and bug reports are welcome!
