---

# Stealth VBS Reverse Shell

This repository contains a minimalist implementation of a stealthy reverse shell using VBScript and PowerShell.

## Files Description

- **inv.vbs**  
  A helper script designed to silently launch `start.vbs` using PowerShell without showing any console or window.
  
- **start.vbs**  
  The main script that establishes a hidden TCP connection to a remote server. It uses PowerShell to bypass antivirus detection by minimizing its footprint. It receives commands from the server, executes them locally, and sends back the output.

## Features

- Fully hidden execution without visible windows
- Operates through PowerShell with minimal system footprint
- Executes arbitrary commands received from the remote server
- Automatically updates the prompt after each command execution

## Planned Features

- Automatic deletion of PowerShell execution logs and script launch traces
- Adding persistence via Windows Registry autorun
- Support for additional protocols beyond TCP (such as UDP and HTTP/S tunneling)

## Requirements

- Windows 7/8/10/11

---

## Usage

1. Set up a listener on any server you control (for example, using `nc -nvlp 4445`).
2. Edit the IP address inside `start.vbs` to point to the listener's IP address.
3. Run `inv.vbs` to initiate a hidden reverse connection.

**Note:** You can connect to **any IP address** where a listener is active — simply update the IP address in `start.vbs` accordingly.

---

## License

This project is licensed under the MIT License. Any unauthorized use for malicious purposes is strictly prohibited.

---

**⚠️ WARNING:** Use this code only in environments where you have explicit permission to perform security testing!

---
