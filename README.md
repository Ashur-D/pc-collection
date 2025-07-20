# Personal Windows 11 Guide

> [!IMPORTANT]
> I am not liable for any damage that may occur to your system; these steps worked for me without issue, but results may vary depending on your system. Additionally, any configuration files for a program will be located in the file tree. I also want to add, I have tried many optimizations and over the years I came to the conclusion that over-doing it will break your system, its better to keep it simple.

anything I use will have an indication - ❤️
  
## 🌐 Quick Navigation
- [📸 Screenshots](#-screenshots)
- [🛠️ Optimizations](#%EF%B8%8Foptimizations)
  - [Programs](#programs)
  - [Network Tweaks](#network-tweaks)
- [🖌️ Customization](#%EF%B8%8Fcustomization)
  - [Programs](#programs-1)
  - [Themes](#popular-themes)
  - [Wallpapers](#Wallpapers)
  - [Popular Themes](#popular-themes)
- [💿 miscellaneous apps](#-miscellaneous-apps)
  - [My Personal Browsers](#my-personal-browsers)
  - [Other sources](#other-sources)

# 📸 Screenshots

![Screenshot 2025-03-02 144930](https://github.com/user-attachments/assets/955cf1f2-a59f-4e91-99a3-64bb2d696e90)

![image](https://github.com/user-attachments/assets/03fbd0ea-96db-47dc-8a59-687fb35f9286)

![image](https://github.com/user-attachments/assets/aecbb724-127e-4cf8-b023-fdaad5178d2f)

![Screenshot 2025-03-02 144413](https://github.com/user-attachments/assets/02de84cf-6678-4b4f-8312-8e4652d715f2)

![Screenshot 2025-03-02 144030](https://github.com/user-attachments/assets/8589b27a-b3a7-418e-a384-7696783bb3a9)

![Screenshot 2025-03-02 144112](https://github.com/user-attachments/assets/a7d6ca6b-e995-44ed-b44f-df19db4e8c28)

# 🛠️Optimizations

## Programs

- ❤️ [WinUtil](https://github.com/ChrisTitusTech/winutil) 
- ❤️ [Download Wintoys](https://apps.microsoft.com/detail/9p8ltpgcbzxd?hl=en-US&gl=US) 
- [Microsoft PC Manager](https://apps.microsoft.com/detail/9pm860492szd?hl=en-US&gl=US) 
- [Download BleachBit](https://www.bleachbit.org/) 
- ❤️ [Download DDU](https://www.wagnardsoft.com/display-driver-uninstaller-DDU-) / [Download NVCleanstall](https://www.techpowerup.com/download/techpowerup-nvcleanstall/)
- ❤️ [Download MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards) / [Download Process Lasso](https://bitsum.com/)
- ❤️ [MAS](https://github.com/massgravel/Microsoft-Activation-Scripts)
  

### other optimization scripts 

- [schneegansde/WindowsUnattendGenerator](https://schneegans.de/windows/unattend-generator/) - This is used to make a custom ISO file or to download the XML file
- [Download Winhance](https://github.com/memstechtips/Winhance)
- [HellzergOptimizer](https://github.com/hellzerg/optimizer)
- [CrapFixer](https://github.com/builtbybel/CrapFixer)
- [ruru-opt](https://github.com/ruru-o/ruru-opt)

## Network tweaks

<details>
 <summary>Open network tweaks</summary><br>

> ⚠️ **Note:** These may not work on all systems as they vary depending on many factors like the system, router, etc.

### The first thing to do is reset your network with the following commands or download and run the bat file:

```
netsh winsock reset
netsh int ip reset all
netsh winhttp reset proxy
ipconfig /flushdns
```
### or
- [Download network-reset.bat](Configs/network-reset.bat)

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
</details>

# 🖌️Customization

## Programs

- ❤️ [StartAllBack](https://www.startallback.com/) / [ExplorerPatcher](https://github.com/valinet/ExplorerPatcher) / [WindHawk](https://github.com/ramensoftware/windhawk) / [Winaero](https://winaero.com/) <br>
		I recommend startallback, but I know others are just as popular and used more.
  
- ❤️ [Nilesoft](https://github.com/moudey/Shell) / [Breeze-Shell](https://github.com/std-microblock/breeze-shell)<br>
		Used for changing the windows context menu
  
- ❤️ [deviantartNiivu](https://www.deviantart.com/niivu/art/Installing-Windows-Themes-UPDATED-708835586) / [VinStarTheme](https://www.vinstartheme.com/) <br>
		Niivu provides installation guides, additional programs, custom cursors, and older, unsupported themes. Most themes include a 7TSP file for icons for hte program below
  
- ❤️ [7TSP GUI](https://www.deviantart.com/devillnside/art/7TSP-GUI-2019-Edition-804769422)<br> 
		Needed for changing the Windows icons
  
- ❤️ [ExplorerTool](https://github.com/Maplespe/explorerTool) / [ExplorerBlurMica](https://github.com/Maplespe/ExplorerBlurMica) / [DWMBlurGlass](https://github.com/Maplespe/DWMBlurGlass)<br>
		Used for custimizing your file explorer and system apps

- [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh) / [FastFetch](https://github.com/fastfetch-cli/fastfetch) <br>
		Used for custimizing your windows terminal

- [GlazeWM](https://github.com/glzr-io/glazewm?tab=readme-ov-file) / [komorebi](https://github.com/LGUG2Z/komorebi) / [whim](https://github.com/dalyIsaac/Whim) / [jwno](https://github.com/agent-kilo/jwno) / [mondrian](https://github.com/policastro/mondrian)<br> 
		Windows tiling managers

- [Zebar](https://github.com/glzr-io/zebar) / [yasb](https://github.com/amnweb/yasb) / [SeleenUI](https://github.com/eythaann/Seelen-UI)<br> 
		Creating widgets and windows status bar

- [TackyBorders](https://github.com/lukeyou05/tacky-borders) / [CuteBorders](https://github.com/keifufu/cute-borders)<br>
		Custom borders around certain windows

- [pywal](https://github.com/dylanaraps/pywal) / [pywal16](https://github.com/eylles/pywal16) / [HellWal](https://github.com/danihek/hellwal) / [Matugen](https://github.com/InioX/matugen) <br>


- [Color Hunt](https://colorhunt.co/)<br>

- [millennium](https://github.com/shdwmtr/millennium)<br>
Customize your steam app

- [folder-icons](https://github.com/sameerasw/folder-icons)<br>

- [Cedro Modern Dock](https://github.com/arthurdeka/cedro-modern-dock)<br>

- [FluentFlyout](https://github.com/unchihugo/FluentFlyout)

- ❤️ [WinSetView](https://github.com/LesFerch/WinSetView) - Change explorer view settings


## Popular Themes

 - ❤️ [Catppuccin](https://github.com/catppuccin)
 - [Rosé Pine](https://github.com/rose-pine)
 - [Nord](https://github.com/nordtheme)
 - [Dracula](https://github.com/dracula)
 - [Material Ocean](https://github.com/material-ocean)
 - [Omni Theme](https://github.com/getomni)
 - [Tokyo Night](https://github.com/tokyo-night)
 - [Rose Box](https://github.com/KraXen72/rosebox)
 - [Gruvbox](https://github.com/morhetz/gruvbox)
 - [Everforest](https://github.com/sainnhe/everforest)

 ## Wallpapers

 #### Here are some links to websites with wallpapers, including mine on wallpaper engine.

  - ❤️ [My Wallpaper Engine](https://steamcommunity.com/profiles/76561198824218763/myworkshopfiles/?appid=431960&sort=score&browsefilter=myfavorites&view=imagewall)
  - ❤️ [Wallpaper Engine website](https://www.wallpaperengine.space/)
  - ❤️ [Quick wallpapers](wallpapers)
  - [Wallsync](https://github.com/leroiduflow/WallSync)
  - [Gruvbox Wallpapers](https://gruvbox-wallpapers.pages.dev/)
  - [Wallhaven](https://wallhaven.cc/)
  - [WallpaperFlare](https://www.wallpaperflare.com/)
  - [Wallpaper Cave](https://wallpapercave.com/)
  - [UHDpaper](https://www.uhdpaper.com/)
  - [Unsplash](https://unsplash.com/t/wallpapers)
  - [WallpapersClan](https://wallpapers-clan.com/)
  - [WallAlphaCoders](https://alphacoders.com/)
  - [FreePik](https://www.freepik.com/)
  - [PixGround](https://www.pixground.com/)

#### Wallpaper Tools

  - [ImageGoNord](https://github.com/Schroedinger-Hat/ImageGoNord-Web) 
  - [GoWall](https://github.com/Achno/gowall)
  - [tint](https://github.com/ashish0kumar/tint) 

    
#### Wallpapers from repo's I found

 - [Gurjaka's Nord-Wallpapers](https://github.com/Gurjaka/Nord-Wallpapers)
 - [walls-catppuccin-mocha](https://github.com/orangci/walls-catppuccin-mocha)
 - [Awesome Wallpapers](https://alexandrosliaskos.github.io/Awesome_Wallpapers/)
 - [nordic wallpapers](https://github.com/linuxdotexe/nordic-wallpapers)
 - [gruvbox wallpapers](https://github.com/AngelJumbo/gruvbox-wallpapers)
 - [Collection 1](https://github.com/FrenzyExists/wallpapers)
 - [Collection 2](https://github.com/maotseantonio/wallpapers)
 - [Collection 3](https://github.com/dharmx/walls)
 - [collection 4](https://github.com/h1Gio/Wallpapers)
 - [Collection 5](https://github.com/lordofhunger/wallpapers)
 - [Collection 6](https://github.com/DenverCoder1/minimalistic-wallpaper-collection)
 - [collection 7](https://github.com/D3Ext/aesthetic-wallpapers)
 - [collection 8](https://github.com/JoydeepMallick/Wallpapers)

# 💿 miscellaneous apps

### 🧰 System Utilities & Monitoring
 - [HWmoniter](https://www.cpuid.com/softwares/hwmonitor.html) | Monitors temps/voltages across components
 - [Sysinternals Utilities](https://learn.microsoft.com/en-us/sysinternals/downloads/) | Advanced system utilities from Microsoft
 - [GPU-Z](https://www.techpowerup.com/gpuz/) | [CPU-Z](https://www.cpuid.com/softwares/cpu-z.html) | Detailed CPU and GPU information
 - [CrystalDiskInfo](https://crystalmark.info/en/software/crystaldiskinfo/) | SSD/HDD health and status monitoring
 - [DNS Benchmark](https://www.grc.com/dns/benchmark.htm) | Test and compare DNS servers
 - [Bottom](https://github.com/ClementTsang/bottom) / [Glances](https://github.com/nicolargo/glances) | Process/system monitor
 - [intel driver support](https://www.intel.com/content/www/us/en/support/intel-driver-support-assistant.html) | Intel hardware driver tool
 - [NETworkManager](https://github.com/BornToBeRoot/NETworkManager) | Advanced network configuration and diagnostics
 - [MSI center](https://www.msi.com/Landing/MSI-Center) | Used to control hardware-specific features like GPU fan behavior

### 📦 Software Installation & Management
- [UniGetUI/WingetUI](https://github.com/marticliment/UniGetUI)
- ❤️[Winstall](https://github.com/omaha-consulting/winstall) -  webapp using winget to install apps, can also install in groups.
- ❤️ [Geek Uninstaller](https://geekuninstaller.com/)


### 🔍 File, App & Search Utilities
- ❤️ [WizTree](https://diskanalyzer.com/)
- [Everything](https://www.voidtools.com/)
- [yazi](https://github.com/sxyazi/yazi)
- [FlowLauncher](https://github.com/Flow-Launcher/Flow.Launcher) / [Wox](https://github.com/Wox-launcher/Wox) / [FluentSearch](https://github.com/adirh3/Fluent-Search)

### 🌐 Web Tools
- [Glance](https://github.com/glanceapp/glance) (self-hosted dashboard for feeds)
- ❤️[TwitchAdSolutions script for Ublock](https://github.com/pixeltris/TwitchAdSolutions)
- ❤️[Premid](https://premid.app/) - allows discord rich presence on the web

### 🎥 Media Tools
- [Loseless Cut](https://github.com/mifi/lossless-cut) / [Rise-Media-Player](https://github.com/Rise-Software/Rise-Media-Player)
- [ImageGlass](https://github.com/d2phap/ImageGlass)
- [Tauon](https://github.com/Taiko2k/Tauon)
- [ShareX](https://github.com/ShareX/ShareX)


   

### My personal browsers

 ❤️ [Floorp](https://floorp.app/en-US) |  [LibreWolf](https://librewolf.net/) |  [Zen](https://zen-browser.app/) |  [Brave](https://brave.com/)


### Currently Looking through
 - [BeatPrints](https://github.com/TrueMyst/BeatPrints) / [Poster generator](https://github.com/AnveshakR/poster-generator)
 - [FanControl](https://github.com/Rem0o/FanControl.Releases)
 - [Powertoys](https://github.com/microsoft/PowerToys)
 - ❤️ [Twinkle-Tray](https://github.com/xanderfrangos/twinkle-tray/releases/tag/v1.16.6) / [ControlMyMoniter](https://controlmymonitor.en.softonic.com/) - Change moniter brightness quickly as well as other features
 - [Weather](https://github.com/rocksdanister/weather)

### Other sources
- [PC-Tuning](https://github.com/valleyofdoom/PC-Tuning)
- [PC-Optimization-Hub](https://github.com/BoringBoredom/PC-Optimization-Hub)
- [GamingPCSetup](https://github.com/djdallmann/GamingPCSetup)
- [free-lunch](https://github.com/auctors/free-lunch)
- [winning-at-windows](https://github.com/twonth/winning-at-windows)


