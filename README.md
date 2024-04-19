# BACKDOOR_WINDOWS

![Screen Back door](https://miro.medium.com/v2/resize:fit:1400/1*zffI4cGVHhODfOIRz9yq8Q.png)

## Description
BACKDOOR_WINDOWS is a batch script designed to exploit a KNOWN vulnerability in Windows operating systems XP/Vista/7/8/8.1/10/11. It allows creating a backdoor to access a compromised system. For example, in case of a forgotten password!
THIS PROGRAM CAN ONLY BE RUN ON A PORTABLE WINDOWS SYSTEM TYPE: MINI WINDOWS

## Usage
To use this script:
1. [Download](https://github.com/DIGYSKY/BACKDOOR_WINDOWS/archive/refs/tags/1.1.3.zip) the files onto a bootable mini-OS such as [Medicat Mini Windows 10](https://medicatusb.com/).
2. Execute the batch script by double-clicking on it or running it from the command prompt.
3. Follow the on-screen instructions to create the backdoor.

![Screen Opening back door](https://www.technig.com/wp-content/uploads/2022/04/Accessibility-1024x576.png)

## Preventing Security Vulnerability by Encrypting the System Hard Drive

To safeguard against this security vulnerability and enhance the protection of Windows operating systems, an effective approach is to encrypt the system hard drive. Encrypting the hard drive ensures that even in the event of unauthorized access or attempted backdoor exploitation, sensitive data remains inaccessible without the appropriate encryption key.

Here are the steps to encrypt the system hard drive on Windows:

1. **Use BitLocker** (for Windows Pro and Enterprise editions):
   - BitLocker is a built-in Windows tool that enables encryption of the system hard drive.
   - To activate BitLocker, go to "Settings" > "Update & Security" > "Device encryption" and follow the instructions to enable BitLocker.

2. **Use VeraCrypt** (for all editions of Windows):
   - VeraCrypt is an open-source disk encryption solution that offers advanced encryption features.
   - Download and install VeraCrypt from their official website.
   - Create an encrypted volume and select the system hard drive as the location.
   - Follow the instructions to encrypt the hard drive and choose a strong password.

3. **Use third-party solutions**:
   - There are other third-party disk encryption solutions compatible with Windows, such as Symantec Endpoint Encryption, Sophos SafeGuard Encryption, etc.

By encrypting the system hard drive, you significantly mitigate the risks associated with backdoor exploitation or unauthorized access to sensitive data. Ensure to regularly backup your encryption key and take appropriate measures to protect this key to prevent data loss.

## In progress

The next step of the project is to adapt the code into C, Bash, or Python and integrate it into a custom Linux distribution to improve the code's efficiency and automation. This adaptation will enable greater flexibility and compatibility across different systems while enhancing security measures.

## Warning
This script is provided for educational purposes only. Using this script to access a system without authorization is illegal and may result in legal consequences. The author takes no responsibility for any misuse of this script.

## Authors
BACKDOOR_WINDOWS by [DIGYSK](https://github.com/DIGYSKY)<br>
MSGBOX by [Myc_1](http://myc01.free.fr/msgbox/).
