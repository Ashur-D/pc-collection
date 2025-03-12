# Personal Windows 11 Guide

> [!IMPORTANT]
> This guide will be updated anytime I change any major settings or feel the need to expand on certain topics. I am not responsible for any damage that may happen on your system, these are all the steps that worked for me and caused no damage but this may differ for each system.

## 🌐 Quick Navigation
- [📸 Screenshots](#-screenshots)
- [🛠️ Optimizations](#%EF%B8%8Foptimizations)
  - [Programs Needed](#programs-needed)
  - [Network Tweaks](#network-tweaks)
- [🖌️ Customization](#%EF%B8%8Fcustomization)
  - [Programs Needed](#programs-needed-1)
  - [Wallpapers](#Wallpapers)
- [💿 miscellaneous apps/tweaks](#-miscellaneous)

# 📸 Screenshots

![Screenshot 2025-03-02 144930](https://github.com/user-attachments/assets/955cf1f2-a59f-4e91-99a3-64bb2d696e90)

![image](https://github.com/user-attachments/assets/03fbd0ea-96db-47dc-8a59-687fb35f9286)

![image](https://github.com/user-attachments/assets/aecbb724-127e-4cf8-b023-fdaad5178d2f)

![Screenshot 2025-03-02 144413](https://github.com/user-attachments/assets/02de84cf-6678-4b4f-8312-8e4652d715f2)

![Screenshot 2025-03-02 144030](https://github.com/user-attachments/assets/8589b27a-b3a7-418e-a384-7696783bb3a9)

![Screenshot 2025-03-02 144112](https://github.com/user-attachments/assets/a7d6ca6b-e995-44ed-b44f-df19db4e8c28)

# 🛠️Optimizations

## Programs Needed

- [Download WinUtil](https://github.com/ChrisTitusTech/winutil) or run the command: `irm https://christitus.com/win | iex`
  
- [Download Winhance](https://github.com/memstechtips/Winhance) or run the command: `irm "https://github.com/memstechtips/Winhance/raw/main/Winhance.ps1" | iex`
  
- [Download Wintoys from the microsoft store](https://apps.microsoft.com/detail/9p8ltpgcbzxd?hl=en-US&gl=US)
  
- [Download BleachBit](https://www.bleachbit.org/) ( This program just cleans your files, be careful when using it, it is powerful and will delete everything)
  
- [Download DDU](https://www.wagnardsoft.com/display-driver-uninstaller-DDU-) and [Download NVCleanstall](https://www.techpowerup.com/download/techpowerup-nvcleanstall/) (These 2 programs are for removoing and installing GPU drivers)
  
- [Download MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards) and [Download Process Lasso](https://bitsum.com/) ( These are for managing your GPU,CPU and RAM)
  

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

## Programs Needed

- [StartAllBack](https://www.startallback.com/) (This program is for changing the windows startmenu, file explorer, tray icons, etc. It has a free 90 day trial)
  
- [Nilesoft](https://nilesoft.org/) (This is for changing the windows context menu)
  
- [deviantartNiivu](https://www.deviantart.com/niivu/art/Installing-Windows-Themes-UPDATED-708835586) (Niivu will give a guide for the installation process, there are also some extra programs you check out that I have not shown here, and custom cursors, as well as some older themes he has on his github that are no longer supported)
  
- [VinStarTheme](https://www.vinstartheme.com/) (Im pretty sure this site steals other peoples themes as I asked Niivu, his content was stolen and put on there, use with caution as it may have older versions)
  
- [7TSP GUI](https://www.deviantart.com/devillnside/art/7TSP-GUI-2019-Edition-804769422) (This is needed for changing the Windows icons)

- [ExplorerTool](https://github.com/Maplespe/explorerTool) / [ExplorerBlurMica](https://github.com/Maplespe/ExplorerBlurMica) (These 2 programs from he same person are used to custimize your file explorer)

- [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh) / [FastFetch](https://github.com/fastfetch-cli/fastfetch) (Both these programs are used to custimize your windows terminal)

- [FlowLauncher](https://github.com/Flow-Launcher/Flow.Launcher) / [Wox](https://github.com/Wox-launcher/Wox) (Use either one, they are fast indexing launchers for apps, files, programs etc.)

- [GlazeWM](https://github.com/glzr-io/glazewm?tab=readme-ov-file) / [komorebi](https://github.com/LGUG2Z/komorebi) (Use either program as a they are both tiling managers)

- [Zebar](https://github.com/glzr-io/zebar) / [yasb](https://github.com/amnweb/yasb) / [SeleenUI](https://github.com/eythaann/Seelen-UI) (are all for creating widigts and windows status bar)

- [TackyBorders](https://github.com/lukeyou05/tacky-borders) / [CuteBorders](https://github.com/keifufu/cute-borders) (Use either for adding a border around certain windows)


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
    
#### Some Wallpapers from repo's I found

 - [Gurjaka's Nord-Wallpapers](https://github.com/Gurjaka/Nord-Wallpapers)
 - [Link 1](https://github.com/dharmx/walls)
 - [Link 2](https://github.com/D3Ext/aesthetic-wallpapers)
 - [Link 3](https://github.com/linuxdotexe/nordic-wallpapers)
 - [Link 4](https://github.com/FrenzyExists/wallpapers)

# 💿 miscellaneous
