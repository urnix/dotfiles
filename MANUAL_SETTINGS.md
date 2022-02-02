# Application installed without Homebrew

## App Store

### HotspotShield VPN - Wifi Proxy
https://apps.apple.com/app/hotspot-shield-vpn-best-vpn/id771076721

## Torrents
1. VMWare Fusion Pro

## Standalone sites

1. Crypto Pro - https://cryptopro.ru/products/cades/plugin/

# macOS Settings

## System Preferences -> 
1. Keyboard -> Use F1, F2, etc. keys as standard functions keys
2. Dock & Menu Bar
   1. Position on screen: Left
   2. Automatically hide and show the Dock
3. Displays
   1. Build-in Retina Display -> Resolution: Scaled -> More Space
   2. Second (Big) Display
      1. Use as: Mirror forBuild-in Retina Display 
      2. Resolution: Default for Display

## Finder
Add folder shortcuts to left panel:
1. dev

## Dock
Organize shortcuts
1. Create folder /Applications/Vendor
2. Create shortcuts for rare used apps in this folder (press Alt+Cmd and drag app icon): Safari, Messages, Photos, Maps, FaceTime, Notes, TV, Reminders, Music, Podcasts, Keynote, Numbers, Pages, App Store   
3. Remove rare used apps from Dock (right click -> Options -> Remove from Dock)
4. Move frequently used apps to top section: Chrome, WebStorm, iTerm

## File associations

Right click on file with corresponding extension -> Get Info (or Cmd + I) -> Open with -> Open dropdown list -> Other -> Select app -> Change All...

*.ts -> WebStorm
*.vue -> WebStorm
*.7z -> The Unarchiver
*.rar -> The Unarchiver
*.txt -> Sublime

# Applications Settings

## VMWare Fusion Pro
System Preferences -> Security and Privacy
1. Accessibility

## Spectacle
System Preferences -> Security and Privacy -> Accessibility
Preferences ->
1. Full Screen: Alt + Cmd + /
2. Left Half: Alt + Cmd + ,
3. Right Half: Alt + Cmd + .
4. Small arrow button in right bottom corner -> Run... : as a background application

## TeamViewer
System Preferences -> Security and Privacy
1. Screen Recording

## Upwork
System Preferences -> Security and Privacy
1. Screen Recording
2. Accessibility

Settings -> General:
1. Open Docker Dashboard at startup -> false
2. Start Docker Desktop when you log in -> true

## iTerm
System Preferences -> Security and Privacy -> Accessibility
Preferences
1. Keys -> Hotkey -> Show/Hide all windows with system-wide hotkey, Hotkey: Alt + §
2. Profile -> Advanced -> Semantic History -> Select "Run Command", type value "open -a /Applications/WebStorm.app \1" 

## Webstorm
Menu -> View -> Appearance -> Tool Window Bars: false

Settings
Keymap
1. Git -> Show History: `Shift+Cmd+I`
2. Git -> Branches: `Shift+Cmd+L`

Live Templates
```
dc (HMTL, Vue) -> data-cy="$NAME$"
```
```
dc (JS, TS) -> [date-cy=$NAME$]
```
```
co (JS, TS, Vue) -> console.log(`$NAME$: ${JSON.stringify($NAME$)}`);
```

Tools -> Actions on save 

Editor -> Code Style -> HTML -> Other -> Generated quite marks: Double

Plugins
1. .env files support
2. Shell Script
3. .ignore