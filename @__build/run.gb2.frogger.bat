SET ROM_FILE="Konami GB Collection Vol.2 (Europe) (GB Compatible).gbc"
SET ROM_FILE_0="Konami GB Collection Vol.2 (Europe) (GB Compatible).0.gbc"


SET ASM_FILE="@__build/konami_collection_2.asm.txt"

SET PATCH_FILE="Konami GB Collection Vol.2 (Europe) [Frogger - autoboot hack].ips"



copy %ROM_FILE_0% %ROM_FILE%


armips -strequ ROM_FILE %ROM_FILE% -definelabel BUILD_LEVEL 1 -definelabel AUTOBOOT_GAME 4 %ASM_FILE%
rgbfix -fgh %ROM_FILE%


flips --create --exact --ignore-checksum --ips %ROM_FILE_0% %ROM_FILE% %PATCH_FILE%


copy %ROM_FILE% "C:\Roms\sgb\__gb"
pause
