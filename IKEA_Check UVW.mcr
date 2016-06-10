/*
[INFO]

NAME = Check UVW
AUTHOR = MastaMan
DEV = ViscoCG
HELP = \help\
CAT=IKEA
LAUNCH=\\visco.local\data\Instal_Sync\scripts\scripts\_IKEA\IKEA Check UVW.ms

[ABOUT]

Toolbar button for Auto Material=

[SCRIPT]

*/

macroScript IKEA_CheckUVW
category:"[IKEA]"
toolTip:"Check UVW"
(
	try(fileIn(getIniSetting (getThisScriptFilename()) "INFO" "LAUNCH"))catch(messageBox "Lost network connection!" title: "Warning!")	
)