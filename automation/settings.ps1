# Settings for the ModpackUploader
# For details/help see: https://github.com/NillerMedDild/ModpackUploader

# The path to the main modpack folder. (the same folder as the mods folder is in)
# Running the modpack uploader from the main modpack folder: ("$PSScriptRoot" | Resolve-Path)
# Running the modpacker uploader from a subfolder: ("$PSScriptRoot/.." | Resolve-Path)
$INSTANCE_ROOT = ("$PSScriptRoot/.." | Resolve-Path)

# =====================================================================//
#  CURSEFORGE ACCOUNT SETTINGS
# =====================================================================//

$CURSEFORGE_USER = "itsDinkd"

# For details see: https://www.curseforge.com/account/api-tokens
# Defined in secrets.ps1 
# $CURSEFORGE_TOKEN = 

# ProjectID can be found on the modpack's Curseforge Projects page, under "About This Project"
$CURSEFORGE_PROJECT_ID = 558084

# =====================================================================//
#  MAIN MODPACK SETTINGS
# =====================================================================//

# This is the modpack name as seen in it's CurseForge url: https://www.curseforge.com/minecraft/modpacks/another-quality-modpack-2]
$MODPACK_NAME = "another-quality-modpack-3"

# Name of the Modpack in the ZIP File
$CLIENT_NAME = "AQM3"

# Version Of The Modpack
$MODPACK_VERSION = "1.7"

# Last Version Of The Modpack
# Needed For Changelog Parsing
# Should be "$null" if this is the first release
$LAST_MODPACK_VERSION = "1.6.1"

# Which modloader the modpack uses
# Can be "forge" or "fabric"
# default: "forge"
$MODLOADER = "forge"

# =====================================================================//
#  CHANGELOG SETTINGS
# =====================================================================//

# Changelog Type
# Can be "markdown", "text" or "html"
$CLIENT_CHANGELOG_TYPE = "html"

# Changelog
# Must be a single string.
$CLIENT_CHANGELOG = "https://github.com/itsdinkd/AQM3/blob/master/changelogs/changelog.md)"

# =====================================================================//
#  CURSEFORGE PROJECT SETTINGS
# =====================================================================//

# Modpack's Minecraft Version
# @(6756) - is Minecraft 1.12.2
# @(8203) - is Minecraft 1.16.5
# More can be found by running GetGameVersions
$GAME_VERSIONS = @(9008)

# Can be "alpha", "beta" or "release"
$CLIENT_RELEASE_TYPE = "release"

#=====================================================================//
#  DEPENDENCIES
#=====================================================================//

# File name of the latest https://github.com/ModdingX/ModListCreator/releases
$CHANGELOG_GENERATOR_JAR = "ModListCreator-4.0.3-fatjar.jar"

# File name of the latest https://github.com/ModdingX/ModListCreator/releases
$MODLIST_CREATOR_JAR = "ModListCreator-4.0.3-fatjar.jar"

#=====================================================================//
#  CLIENT FILE SETTINGS
#=====================================================================//

$CLIENT_FILE_AUTHOR = "itsDinkd"

$FOLDERS_TO_INCLUDE_IN_CLIENT_FILES = @(
    "config",
    "defaultconfigs",
    "kubejs",
    "minemenu",
    "shaderpacks",
    "simple-rpc",
    "servers.dat",
    "mods/iceandfire-2.1.13-1.18.2+build.beta-3.jar",
    "mods/expandedstorage-8.3.3+1.18.2-forge.jar"
)

$CONFIGS_TO_REMOVE_FROM_CLIENT_FILES = @("roughlyenoughitems", "oculus.properties", "xaerominimap.txt", "xaeroworldmap.json", "oculus.properties", "rubidium-options.json", "rubidium-mixins.properties", "rubidium_extra.toml")

$FOLDERS_TO_REMOVE_FROM_CLIENT_FILES = @("local/ftbutilities")

#=====================================================================//
#  SERVER FILE SETTINGS
#=====================================================================//

$SERVER_FILES_FOLDER = "$INSTANCE_ROOT/server_files"

$SERVER_SETUP_CONFIG_PATH = "$SERVER_FILES_FOLDER/server-setup-config.yaml"

# =====================================================================//
#  MODULES
# =====================================================================//

# Toggle automatic building of the manifest zip on/off
# Default: $true
$ENABLE_CLIENT_FILE_MODULE = $true

# Toggle the modpack uploader on/off
# Setting this to $false will also disable the Server File and Changelog Generator Modules.
# Default: $true
$ENABLE_MODPACK_UPLOADER_MODULE = $true

# Toggle server file feature on/off
# Default: $true
$ENABLE_SERVER_FILE_MODULE = $true

# Toggle serverstarter compatibility on/off
# This will update the "modpackUrl" in the file found at $SERVER_SETUP_CONFIG_PATH
# to point to your newly created client files on the CurseForge CDN.
# Default: $false
$ENABLE_SERVERSTARTER_MODULE = $true

# Toggle automatic changelog generator on/off
# This module requires an older modpack manifest zip to be present, 
# $LAST_MODPACK_VERSION must be set, and the manifest naming must be consistent.
# Default: $false
$ENABLE_CHANGELOG_GENERATOR_MODULE = $true
# Path to the ChangelogGenerator's output file
$CHANGELOG_PATH = "$INSTANCE_ROOT/changelogs/changelog_mods_$MODPACK_VERSION.md"

# Toggle creation of a modlist file on/off
# Default: $true
$ENABLE_MODLIST_CREATOR_MODULE = $true
# Path to the ModListCreator's output file
$MODLIST_PATH = "$INSTANCE_ROOT/changelogs/modlist_$MODPACK_VERSION.md"

# Toggle removal and re-download of jars on/off.
# Setting this to true will ensure that you always have the latest 
# Twitch Export Builder and ChangelogGenerator, but increases the
# amount of time this script takes to execute.
# Default: $false
$ENABLE_ALWAYS_UPDATE_JARS = $false

# Toggles github release integration on/off.
# This will create a new release on your issue-tracker when using the modpack uploader.
# See below link for info:
# Default: $false
$ENABLE_GITHUB_RELEASE_MODULE = $false	


# =====================================================================//
#  ADVANCED
#  Do not change anything unless you
#  know what you are doing!
# =====================================================================//

# Syntax of the Client ZIP File
$CLIENT_ZIP_NAME = "$CLIENT_NAME-1.18.2-$MODPACK_VERSION"

# Syntax of the Previous Versions Client ZIP File
$LAST_MODPACK_ZIP_NAME = "$CLIENT_NAME-1.18.2-$LAST_MODPACK_VERSION"

# Default: "$CLIENT_NAME $MODPACK_VERSION"
$CLIENT_FILE_DISPLAY_NAME = "AQM3 v$MODPACK_VERSION"

# Can be "markdown", "text" or "html"
# Default: $CLIENT_CHANGELOG_TYPE
$SERVER_CHANGELOG_TYPE = $CLIENT_CHANGELOG_TYPE

# Must be a single string. Use Powershell escaping for new lines etc. New line is `n and indent is `t
# Default: $CLIENT_CHANGELOG
$SERVER_CHANGELOG = $CLIENT_CHANGELOG

# Can be "alpha", "beta" or "release"
# Default: $CLIENT_RELEASE_TYPE
$SERVER_RELEASE_TYPE = $CLIENT_RELEASE_TYPE

# Default: "$CLIENT_NAME Server $MODPACK_VERSION"
$SERVER_ZIP_NAME = "$CLIENT_NAME`-Server-$MODPACK_VERSION"

# Default: $SERVER_FILENAME
$SERVER_FILE_DISPLAY_NAME = "Server AQM3 v$MODPACK_VERSION"
