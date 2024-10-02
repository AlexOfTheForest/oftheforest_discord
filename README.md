# FiveM Discord Rich Presence

![FiveM](https://img.shields.io/badge/FiveM-OfTheForest--DiscordRichPresence-purple.svg)  
This project adds Discord Rich Presence functionality to your FiveM server, allowing players to display their in-game status on their Discord profiles. The Rich Presence includes player actions (e.g., running, swimming, driving), current street name, player ID, and clickable buttons to join your Discord server or FiveM server.

## Features
- **Real-time player status updates** (running, swimming, cruising, idle)
- **Current street name display** from the game
- **Clickable buttons** to join your Discord server and FiveM server directly from Discord Rich Presence
- **Player ID display** in the Rich Presence

## Prerequisites
- A FiveM server
- A Discord Developer Application (for Rich Presence)
- Basic knowledge of Lua scripting in FiveM

## Setup Instructions

### Step 1: Set Up Discord Developer Application
1. Go to the [Discord Developer Portal](https://discord.com/developers/applications) and create a new application.
2. In the application settings, enable **Rich Presence**.
3. (Optional) Upload custom icons for activities like running, swimming, and driving.
4. Copy your **Client ID**, as it will be needed later.

### Step 2: Install the Resource on Your FiveM Server
1. Clone or download this repository to your `resources` folder.
2. Inside the folder, ensure the following files are present:
   - `fxmanifest.lua`
   - `oftheforest_discord.lua`

### Step 3: Configure the Resource
In the `oftheforest_discord.lua` file, replace the placeholder URLs with your actual Discord invite link and FiveM server IP.

```lua
SetDiscordRichPresenceAction(0, "DISCORD", "https://discord.gg/yourserver") -- Replace with your Discord invite link
SetDiscordRichPresenceAction(1, "PLAY", "fivem://connect/YOUR_SERVER_IP") -- Replace with your FiveM server IP
