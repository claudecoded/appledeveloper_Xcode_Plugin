<div align="center">
# Say hi to the ultimate Apple Developer tools plugin engine

  <img width="1024" height="576" alt="image" src="https://github.com/user-attachments/assets/3ccc0946-550d-4f84-9cbf-0358b96e166c" />

</div>

An AI-ready, platform-agnostic developer plugin and automation engine designed for the Apple software ecosystem. Built as a lightweight Command Line Interface (CLI), this tool can be seamlessly embedded into **Xcode**, **VS Code**, **Swift Playgrounds**, or macOS system-wide automation workflows.

It reads natural language prompts from your code editor and generates clean, human-like SwiftUI code conforming to Apple's *Human Interface Guidelines (HIG)*.

---

## 🏗️ Repository Architecture

The project is structured using the standard native Swift Package Manager (SPM) layout:

```text
├── Sources/
│   └── PluginCLI/          # Core CLI engine that handles system IO and input processing
├── Tests/
│   └── PluginTests/        # Automated validation unit tests
├── .gitignore              # Prevents tracking of local build and OS metadata
├── LICENSE                 # MIT Open-source license terms
└── Package.swift           # Native Apple package compilation manifesto
```

---

## 🛠️ How to Compile & Use

Since this engine relies entirely on native Swift tools, any developer with Xcode or the Swift toolchain installed can build and run it globally.

### 1. Compile Locally
```bash
git clone <YOUR_REPOSITORY_URL>
cd <REPOSITORY_FOLDER_NAME>
swift build -c release
```
The compiled binary executable will be available at `.build/release/plugin`.

### 2. Multi-Platform Integration

#### In Xcode (Via System Behaviors)
Map a script or shortcut under `Xcode > Preferences > Behaviors` to pipe or execute `.build/release/plugin card` to automatically insert programmatic UI into your active code editor line.

#### In VS Code (Via Tasks or Runner Extensions)
Configure a local Task or use code-runner extensions to pipe the selected line text directly into the CLI binary standard input:
```bash
echo "create an adjustable card layout" | /path/to/plugin
```

#### In Swift Playgrounds (iPad & Mac)
Import this repository directly as a Swift Package dependency into your Playgrounds ecosystem to dynamically generate programmatic layouts using code methods.

---

## 🤝 Open-Source Contributions

This repository is built to be open, modular, and driven by the community. Developers are welcome to open Issues or submit Pull Requests to:
- Expand UI generation patterns inside the parsing system (`main.swift`).
- Integrate the engine backend with live LLM endpoints (OpenAI, Anthropic, or local Ollama instances).
- Draft custom IDE extension wrappers on top of this global CLI interface.

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
