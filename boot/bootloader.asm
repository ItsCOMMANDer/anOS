[org 0x7c00]

mov [BOOT_DRIVE], dl

mov bp, 0x9000
mov sp, bp

mov bx, STARTUP_MESSAGE

BOOT_DRIVE db 0
STARTUP_MESSAGE db "Booted up in 16-Bit real Time mode." 0

times 510 - ($-$$) db 0
dw 0xaa55