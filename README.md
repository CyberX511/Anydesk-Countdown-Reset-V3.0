# AnyDesk Trial Reset Utility (Batch Script)

A Windows batch script designed to reset the connection countdown timer in AnyDesk.

## ⚠️ Important Disclaimer & Notice ⚠️

**PLEASE READ BEFORE USING:**

*   **Purpose:** This script is provided for **educational and testing purposes only**. It is intended to be used on systems you own and manage to evaluate software in lab environments.
*   **Effect:** Using this script will **reset your AnyDesk client settings**. This means your **saved passwords will be lost**.
*   **Ethics:** If you find AnyDesk useful for professional or long-term use, **please support the developers by purchasing a license**. This tool is not intended to circumvent paid licenses for commercial use.
*   **Requirement:** The script must be run with **Administrator privileges** to function correctly.

## 🚀 Features

*   **Resets Trial Timer:** Clears the files that track the AnyDesk usage countdown.
*   **Transparent & Open-Source:** Since it's a batch file (.bat), you can easily review the code to see exactly what it does—no hidden malware.
*   **User Confirmation:** Prompts you before making any changes to your system.

## 🛠️ How to Use

1.  **Download:** Click on `Anydesk Countdown Reset V3.0.bat` in this repository.
2.  **Run as Administrator:**
    *   Right-click the downloaded file.
    *   Select **"Run as administrator"**.
3.  **Confirm:** Read the prompt and type `Y` to execute the reset.
4.  **Complete:** The script will run and notify you upon completion. You can now launch AnyDesk.

## 🔍 How It Works

The script performs a simple and safe operation:
1.  It creates backup folders (`...\AnyDesk\old\`).
2.  It moves specific configuration files (`service.conf`, `system.conf`) from their default locations in `AppData\Roaming` and `ProgramData` to these backup folders.
3.  When AnyDesk is restarted, it generates new config files, effectively resetting the trial counter.

## ❓ Frequently Asked Questions

**Q: My antivirus flagged this! Is it a virus?**\
A: **No.** Antivirus software often heuristically flags programs or scripts that modify system settings. You can verify the safety of this tool by reading the raw batch file code above—it only uses standard Windows commands.

**Q: Will this get me a permanent license?**\
A: **No.** This is a trial reset utility, not a crack. It simply resets the counter for the built-in trial mode.

**Q: Will this script delete my saved sites or bookmarks?**\
A: No, the script will keep your saved sites/bookmarks, but it will remove your saved passwords.


---
