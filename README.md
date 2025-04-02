# Personal Windows 11 Guide

> [!IMPORTANT]
> This guide will be updated whenever I make significant changes to settings. I am not liable for any damage that may occur to your system; these steps worked for me without issue, but results may vary depending on your system. Additionally, any configuration files for a program will be located in the file tree. I also want to add, I have tried many optimizations and over the years I came to the conclusion that over-doing it will break your system, its better to keep it simple.

## 🌐 Quick Navigation
- [📸 Screenshots](#-screenshots)
- [🛠️ Optimizations](#%EF%B8%8Foptimizations)
  - [Programs](#programs)
  - [Network Tweaks](#network-tweaks)
- [🖌️ Customization](#%EF%B8%8Fcustomization)
  - [Programs](#programs-1)
  - [Wallpapers](#Wallpapers)
  - [Popular Themes](#popular-themes)
- [💿 miscellaneous apps/tweaks](#-miscellaneous-appstweaks)
  - [My Personal Browsers](#my-personal-browsers)
  - [Tools I use](#Tools-I-use)

# 📸 Screenshots

![Screenshot 2025-03-02 144930](https://github.com/user-attachments/assets/955cf1f2-a59f-4e91-99a3-64bb2d696e90)

![image](https://github.com/user-attachments/assets/03fbd0ea-96db-47dc-8a59-687fb35f9286)

![image](https://github.com/user-attachments/assets/aecbb724-127e-4cf8-b023-fdaad5178d2f)

![Screenshot 2025-03-02 144413](https://github.com/user-attachments/assets/02de84cf-6678-4b4f-8312-8e4652d715f2)

![Screenshot 2025-03-02 144030](https://github.com/user-attachments/assets/8589b27a-b3a7-418e-a384-7696783bb3a9)

![Screenshot 2025-03-02 144112](https://github.com/user-attachments/assets/a7d6ca6b-e995-44ed-b44f-df19db4e8c28)

# 🛠️Optimizations

## Programs

- [Download WinUtil](https://github.com/ChrisTitusTech/winutil) or run the command: `irm https://christitus.com/win | iex`
  
- [Download Winhance](https://github.com/memstechtips/Winhance) or run the command: `irm "https://github.com/memstechtips/Winhance/raw/main/Winhance.ps1" | iex`
  
- [Download Wintoys from the microsoft store](https://apps.microsoft.com/detail/9p8ltpgcbzxd?hl=en-US&gl=US)
  
- [Download BleachBit](https://www.bleachbit.org/) ( This program just cleans your files, be careful when using it, it is powerful and will delete everything)
  
- [Download DDU](https://www.wagnardsoft.com/display-driver-uninstaller-DDU-) and [Download NVCleanstall](https://www.techpowerup.com/download/techpowerup-nvcleanstall/) (These 2 programs are for removoing and installing GPU drivers)
  
- [Download MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards) and [Download Process Lasso](https://bitsum.com/) ( These are for managing your GPU,CPU and RAM)

- [schneegansde/WindowsUnattendGenerator](https://schneegans.de/windows/unattend-generator/) ( This is used to make a custom ISO file or to download the XML file)
  

### other applications I havent used much (use with caution)

- [HellzergOptimizer](https://github.com/hellzerg/optimizer)
  
- [ThisIsNot11](https://github.com/builtbybel/ThisIsNot11)

## Network tweaks

> [!NOTE]
> These may not work on all systems as they vary depending on many factors like the system,router,etc.

### The first thing to do is reset your network with the following commands or download and run the bat file:

```
netsh winsock reset
netsh int ip reset all
netsh winhttp reset proxy
ipconfig /flushdns
```
### or
- [Download network-reset.bat](https://github.com/Ashur-D/Personal-Windows11-Guide/blob/main/network-reset.bat)

### next 
Run this command to see your current network congestion and take not incase you may want revert back: 
```
Get-NetTCPSetting | Select SettingName, CongestionProvider
```
- Then use 1 of the following and test out which gives the best output

```
netsh int tcp set supplemental Template=Internet CongestionProvider=bbr2
netsh int tcp set supplemental Template=Datacenter CongestionProvider=bbr2
netsh int tcp set supplemental Template=Compat CongestionProvider=bbr2
netsh int tcp set supplemental Template=DatacenterCustom CongestionProvider=bbr2
netsh int tcp set supplemental Template=InternetCustom CongestionProvider=bbr2
```
```
netsh int tcp set supplemental Template=Internet CongestionProvider=NewReno
netsh int tcp set supplemental Template=Datacenter CongestionProvider=NewReno
netsh int tcp set supplemental Template=Compat CongestionProvider=NewReno
netsh int tcp set supplemental Template=DatacenterCustom CongestionProvider=NewReno
netsh int tcp set supplemental Template=InternetCustom CongestionProvider=NewReno
```
```
netsh int tcp set supplemental template=internet congestionprovider=CUBIC
netsh int tcp set supplemental template=internetcustom congestionprovider=CUBIC
netsh int tcp set supplemental Template=Compat CongestionProvider=CUBIC
netsh int tcp set supplemental template=Datacenter congestionprovider=CUBIC
netsh int tcp set supplemental template=Datacentercustom congestionprovider=CUBIC
```
```
netsh int tcp set supplemental template=internet congestionprovider=CTCP
netsh int tcp set supplemental template=internetcustom congestionprovider=CTCP
netsh int tcp set supplemental Template=Compat CongestionProvider=CTCP
netsh int tcp set supplemental template=Datacenter congestionprovider=CTCP
netsh int tcp set supplemental template=Datacentercustom congestionprovider=CTCP
```


# 🖌️Customization

## Programs

- [StartAllBack](https://www.startallback.com/) (This program is for changing the windows startmenu, file explorer, tray icons, etc. It has a free 90 day trial)
  
- [Nilesoft](https://github.com/moudey/Shell) (This is for changing the windows context menu)
  
- [deviantartNiivu](https://www.deviantart.com/niivu/art/Installing-Windows-Themes-UPDATED-708835586) / [Niivu's Github](https://github.com/niivu) (Niivu will give a guide for the installation process, there are also some extra programs you check out that I have not shown here, and custom cursors, as well as some older themes he has on his github that are no longer supported and all themes will have a 7tsp file to use with the program below)

- [7TSP GUI](https://www.deviantart.com/devillnside/art/7TSP-GUI-2019-Edition-804769422) (This is needed for changing the Windows icons)
  
- [VinStarTheme](https://www.vinstartheme.com/) (Im pretty sure this site steals other peoples themes as I asked Niivu, his content was stolen and put on there, use with caution as it may have older versions)

- [ExplorerTool](https://github.com/Maplespe/explorerTool) / [ExplorerBlurMica](https://github.com/Maplespe/ExplorerBlurMica) (These 2 programs from he same person are used to custimize your file explorer)

- [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh) / [FastFetch](https://github.com/fastfetch-cli/fastfetch) / [ZSH](https://zsh.sourceforge.io/) (These programs are used to custimize your windows terminal)

- [FlowLauncher](https://github.com/Flow-Launcher/Flow.Launcher) / [Wox](https://github.com/Wox-launcher/Wox) (fast indexing launchers for apps, files, programs etc.)

- [GlazeWM](https://github.com/glzr-io/glazewm?tab=readme-ov-file) / [komorebi](https://github.com/LGUG2Z/komorebi) (Windows tiling managers)

- [Zebar](https://github.com/glzr-io/zebar) / [yasb](https://github.com/amnweb/yasb) / [SeleenUI](https://github.com/eythaann/Seelen-UI) (Creating widgets and windows status bar)

- [TackyBorders](https://github.com/lukeyou05/tacky-borders) / [CuteBorders](https://github.com/keifufu/cute-borders) (Custom borders around certain windows)

- [Bottom](https://github.com/ClementTsang/bottom) / [Glances](https://github.com/nicolargo/glances)( Graphical process/system monitor)

- [pywal](https://github.com/dylanaraps/pywal) / [pywal16](https://github.com/eylles/pywal16)

- [Color Hunt](https://colorhunt.co/)

## Popular Themes

 - [Catppuccin](https://github.com/catppuccin)

 - [Rosé Pine](https://github.com/rose-pine)

 - [Nord](https://github.com/nordtheme)

 - [Dracula](https://github.com/dracula)

 - [Material Ocean](https://github.com/material-ocean)

 - [Omni Theme](https://github.com/getomni)

 - [Tokyo Night](https://github.com/tokyo-night)

 - [Rose Box](https://github.com/KraXen72/rosebox)

 ## Wallpapers

 #### Here are some links to websites with wallpapers, including mine on wallpaper engine.

  - [My Wallpaper Engine](https://steamcommunity.com/profiles/76561198824218763/myworkshopfiles/?appid=431960&sort=score&browsefilter=myfavorites&view=imagewall)
    
  - [Wallpaper Engine website](https://www.wallpaperengine.space/)
    
  - [Gruvbox Wallpapers](https://gruvbox-wallpapers.pages.dev/)
    
  - [Wallhaven](https://wallhaven.cc/)
    
  - [Wallpaper Cave](https://wallpapercave.com/)

  - [UHDpaper](https://www.uhdpaper.com/)

  - [Unsplash](https://unsplash.com/t/wallpapers)

  - [FreePik](https://www.freepik.com/)

  - [ImageGoNord](https://github.com/Schroedinger-Hat/ImageGoNord-Web) (This website just changes your wallpapers to a Nord theme style)

  - [GoWall](https://github.com/Achno/gowall) (Converts an image like a wallpaper to a certain color-scheme / pallete)

    
#### Some Wallpapers from repo's I found

 - [Gurjaka's Nord-Wallpapers](https://github.com/Gurjaka/Nord-Wallpapers)
 - [Link 1](https://github.com/dharmx/walls)
 - [Link 2](https://github.com/D3Ext/aesthetic-wallpapers)
 - [Link 3](https://github.com/linuxdotexe/nordic-wallpapers)
 - [Link 4](https://github.com/FrenzyExists/wallpapers)
 - [Link 5](https://github.com/maotseantonio/wallpapers)

# 💿 miscellaneous apps/tweaks

## Tools I use

 - [UniGetUI/WingetUI](https://github.com/marticliment/UniGetUI)

 - [FanControl](https://github.com/Rem0o/FanControl.Releases)

 - [Loseless Cut](https://github.com/mifi/lossless-cut)

 - [Powertoys](https://github.com/microsoft/PowerToys)

 - [Geek Uninstaller](https://geekuninstaller.com/)

 - [WizTree](https://diskanalyzer.com/) | [Everything](https://www.voidtools.com/)

 - [HWmoniter](https://www.cpuid.com/softwares/hwmonitor.html)

 - [GPU-Z](https://www.techpowerup.com/gpuz/) | [CPU-Z](https://www.cpuid.com/softwares/cpu-z.html)

 - [Sysinternals Utilities](https://learn.microsoft.com/en-us/sysinternals/downloads/)

 - [ControlMyMoniter](https://controlmymonitor.en.softonic.com/)

 - [CrystalDiskInfo](https://crystalmark.info/en/software/crystaldiskinfo/)

 - [DNS Benchmark](https://www.grc.com/dns/benchmark.htm)

 - [Powershell 7](https://github.com/PowerShell/PowerShell)

## My personal browsers

 [Floorp](https://floorp.app/en) |  [LibreWolf](https://librewolf.net/) |  [Zen](https://zen-browser.app/) |  [Brave](https://brave.com/)


## Currently testing

 - [yazi](https://github.com/sxyazi/yazi)
 - [whim](https://github.com/dalyIsaac/Whim)
 - [jwno](https://github.com/agent-kilo/jwno)
 - [mondrian](https://github.com/policastro/mondrian)

