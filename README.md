# WinNICMetrics
Change Windows NIC metrics automatically

## Sceneario
Let's say you want to play a game with your friends and LAN mode is supported.
But you are not in the same LAN(subnet). Naturally, you need tunnel or VPN like ([ZeroTier](https://zerotier.com)) to make sure you are in the same LAN.

But the game is (maybe) poorly written. It does not detect the correct network interface (your VPN/tunnel) instead of using your regular network interface. So you cannot find your friends' session.

[ForceBindIP](https://r1ch.net/projects/forcebindip) with [ForceBindIP GUI](https://sourceforge.net/projects/forcebindip-gui/) can help you set network interface priority (metric) for specific program instead of changing system-wide settings.

But [ForceBindIP](https://r1ch.net/projects/forcebindip) use DLL injection, which will be blocked by cetrain games or program. You are forced to change system-wide settings. Which is tedious if you need to change and revert the settings everytime. This is where WinNICMetrics comes to rescue.

## Setup
1. Right-click [here](https://github.com/hhhhhojeihsu/WinNICMetrics/raw/master/WinNICMetrics.ps1) and select save as to download
2. Right click on the startup menu and select 'Windows Powershell (Run as administrator) and enter 'Set-ExecutionPolicy Bypass' then press 'A'
3. Right-click the script and select 'Run in powershell'

## How to use
See program prompt

## NOTE
- This program assume both interfaces are using auto metric by default
- If you have lots of network interfaces, changing metric will probably make your network not working as you desire