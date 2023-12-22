INCLUDE Irvine32.inc

.data
input DD ?                 ; input value
output DD ?  
output2 DD ?  ; output value
selection DWORD ?           ; user's selection


rate1 DD 0.0044             ;1 dollar equals 228 pkr 
rate2 DD 0.36               ;1 indian rupee equals 2.76 pkr
rate3 DD 0.0042             ;1 euro equals 240 pkr
rate4 DD 0.0162             ;1 UAE Dirham equals 62 pkr
rate5 DD 0.0037             ;1 pound sterling equals 271 pkr
rate6 DD 0.0013             ;1 Kuwaiti Dinar equals 741 pkr
rate7 DD 744.20             ;Vice Versa
rate8 DD 227.25             ;Vice Versa
rate9 DD 2.76               ;Vice Versa
rate10 DD 242.33              ;Vice Versa
rate11 DD 61.87              ;Vice Versa
rate12 DD 274.81              ;Vice Versa
rate13 DD 82.27              ;Vice Versa
rate14 DD 0.31             ;Vice Versa
rate15 DD 0.94             ;Vice Versa
  
choice BYTE "Your Choice: ", 0
mainMenu1 BYTE "Select a conversion you want to do: ", 0DH,0AH,

menu BYTE "1. Convert from Pakistani Rupee to US Dollar:  ", 0DH,0AH,
    "2. Convert from Pakistani Rupee to Indian Rupee:  ", 0DH,0AH,
    "3. Convert from Pakistani Rupee to Euro:  ", 0DH,0AH,
    "4. Convert from Pakistani Rupee to United Arab Emirates Dirham:  ", 0DH,0AH,
    "5. Convert from Pakistani Rupee to Pound Sterling:  ", 0DH,0AH,
    "6. Convert from Pakistani Rupee to Kuwaiti Dinar:  ",0DH,0AH,
    

menu2 BYTE "7. Convert from Kuwaiti Dinar to Pakistani Rupee:  ", 0DH,0AH,
    "8. Convert from US Dollar to Pakistani Rupee:  ",0DH,0AH,
    "9. Convert from Indian Rupee to Pakistani Rupee:  ",0DH,0AH,
    "10. Convert from Euro to Pakistani Rupee:  ",0DH,0AH,
    "11. Convert from United Arab Emirates Dirham to Pakistani Rupee:  ",0DH,0AH,
    "12. Convert from Pound Sterling to Pakistani Rupee:  ",0DH,0AH,
    "13. Convert from US Dollar to Indian Rupee:  ",0DH,0AH,

menu3 BYTE "14. Convert from US Dollar to Kuwaiti Dinar:  ",0DH,0AH,
    "15. Convert from US Dollar to Euro:  ",0DH,0AH,
    "16. Quit", 0

MainPrompt BYTE "============================================ Welcome to Currency Conversion ============================================",0
prompt BYTE "Enter the amount of money you want to convert: ",0

ending BYTE "Thank you for using this conversion system!",0

result BYTE "Converted Amount is: ", 0


.code
main PROC

    mov edx, offset MainPrompt
    call WriteString
    call CRLF
    call CRLF
    ; Set up a loop to allow the user to perform multiple conversions
    mov ecx, -1
    cmp ecx, 0
    

conv_loop:
    
    ;Display the conversion menu and get the user's selection
    call DisplayMenu
    call CRLF

    ;mov edx, offset prompt
    ;call CRLF
    ;call WriteString  
    ;call ReadFloat
    ;fstp input



    ; Calculate the output value based on the user's selection
    cmp eax, 1
    je conv1
    cmp eax, 2
    je conv2
    cmp eax, 3
    je conv3
    cmp eax, 4
    je conv4
    cmp eax, 5
    je conv5
    cmp eax, 6
    je conv6
    cmp eax,7
    je conv7
    cmp eax,8
    je conv8
    cmp eax,9
    je conv9
    cmp eax,10
    je conv10
    cmp eax,11
    je conv11
    cmp eax,12
    je conv12
    cmp eax,13
    je conv13
    cmp eax,14
    je conv14
    cmp eax,15
    je conv15
    cmp eax,16
    je terminate


    conv1:  
        ;fld input
        ;fld rate1
        ;FMul
        ;fstp output
        ;jmp done

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input


        call conversion1
        jmp done

    conv2:
        ;fld input
        ;fld rate2
        ;FMul
        ;fstp output
        
        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion2
        jmp done

    conv3:
        ;fld input
        ;fld rate3
        ;FMul
        ;fstp output
        
                mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion3
        jmp done

    conv4:
        ;fld input
        ;fld rate4
        ;FMul
        ;fstp output
        
        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input
        
        call conversion4
        jmp done

    conv5:
        ;fld input
        ;fld rate5
        ;FMul
        ;fstp output
        
        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion5
        jmp done

    conv6:
        ;fld input
        ;fld rate5
        ;FMul
        ;fstp output
        
        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion6
        jmp done

    conv7:
        ;fld input
        ;fld rate5
        ;FMul
        ;fstp output
        

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion7
        jmp done

    conv8:
        ;fld input
        ;fld rate5
        ;FMul
        ;fstp output
        

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion8
        jmp done

    conv9:
        ;fld input
        ;fld rate5
        ;FMul
        ;fstp output
        

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion9
        jmp done

     conv10:
        ;fld input
        ;fld rate5
        ;FMul
        ;fstp output
        

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion10
        jmp done

      conv11:
        ;fld input
        ;fld rate5
        ;FMul
        ;fstp output
        

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion11
        jmp done

     conv12:

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion12
        jmp done

    conv13:

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion13
        jmp done

        
    conv14:

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion14
        jmp done

    conv15:

        mov edx, offset prompt
        call CRLF
        call WriteString  
        call ReadFloat
        fstp input

        call conversion15
        jmp done

    terminate:
        mov edx, offset ending
        call WriteString
        call CRLF
        ret
    
    done:
        ; Display the output value
        fld output
        call WriteFloat
        call CRLF
        call CRLF

    jmp conv_loop


; Procedure to display the conversion menu and get the user's selection

DisplayMenu PROC
    ; Display the conversion menu

    mov eax, white + (magenta*16)
    call SetTextColor
    mov edx, offset mainMenu1
    call WriteString
    call CRLF
        
    ; Get the user's selection
    call CRLF
    mov edx, offset choice
    call WriteString
    
    call ReadInt

    ret
DisplayMenu ENDP



conversion1 PROC
        fld input
        fld rate1
        FMul

        call CRLF
        mov edx, offset result
        call WriteString
        
        fstp output

    ret
conversion1 ENDP



conversion2 PROC
        fld input
        fld rate2
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion2 ENDP



conversion3 PROC
        fld input
        fld rate3
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion3 ENDP



conversion4 PROC
        fld input
        fld rate4
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion4 ENDP



conversion5 PROC
        fld input
        fld rate5
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion5 ENDP


conversion6 PROC
        fld input
        fld rate6
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion6 ENDP


conversion7 PROC
        fld input
        fld rate7
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion7 ENDP

conversion8 PROC
        fld input
        fld rate8
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion8 ENDP


conversion9 PROC
        fld input
        fld rate9
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion9 ENDP

conversion10 PROC
        fld input
        fld rate10
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion10 ENDP

conversion11 PROC
        fld input
        fld rate11
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion11 ENDP

conversion12 PROC
        fld input
        fld rate12
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion12 ENDP

conversion13 PROC
        fld input
        fld rate13
        FMul
        call CRLF
        mov edx, offset result
        call WriteString
        fstp output

    ret
conversion13 ENDP

conversion14 PROC
        fld input
        fld rate14
        FMul
        call CRLF
        mov edx, offset result
        call WriteString 
        fstp output

    ret
conversion14 ENDP

conversion15 PROC
        fld input
        fld rate15
        FMul
        call CRLF
        mov edx, offset result
        call WriteString 
        fstp output

    ret
conversion15 ENDP


main ENDP
END main
