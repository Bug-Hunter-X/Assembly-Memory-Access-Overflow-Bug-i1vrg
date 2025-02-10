mov ecx, esi
imul ecx, 4 ; Multiply esi by 4 without potential overflow
add ecx, ebx ; Add ebx to the result
jcxz error_handler ; Check if ecx is zero to avoid accessing 0 address
mov eax, [ecx] ; Access memory at the corrected address

error_handler:
; Handle the potential error