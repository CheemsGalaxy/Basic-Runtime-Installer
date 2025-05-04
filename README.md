# Basic Runtime Installer

**Basic Runtime Installer** is a PowerShell script that helps you install all essential runtimes for Windows. You no longer need to search and install each runtime manually — this script takes care of everything.


## 🛠️ How to Use

1. Make sure **Windows Update is working properly**.
2. Download the script: [Basic-Runtime-Installer.ps1](https://github.com/CheemsGalaxy/Basic-Runtime-Installer/blob/main/Basic-Runtime-Installer.ps1)
3. Right-click the file and choose **Run with PowerShell** (do **not** use Command Prompt or CMD).
4. Wait for the installation to complete. Done!


## 📦 Runtimes Included

* Java Runtime Environment (JRE)
* Vulkan SDK
* Microsoft DirectX
* .NET Framework Developer Pack
* Microsoft Edge WebView2 Runtime
* .NET SDK and .NET Runtime
* Microsoft Visual C++ Redistributables (all versions)


## ⚙️ How It Works

1. The script checks whether **winget** and **chocolatey** are installed. If they are missing, it installs them automatically.
2. Then, it proceeds to install all the runtimes listed above.


## 📌 Notes

* Requires **administrator privileges**.
* Recommended for Windows 10 or later.


## 📬 **Contact via Discord**: [Join here](https://discord.gg/auFWQS3d)  
