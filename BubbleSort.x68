*----------------------------------------------------------------------------------------
* Title      :Assignment#2
* Written by :Husni Abdelsalam Husni Abed
* Date       :24/12/2021
* Description: My code for sorts a 32-element array of 16-bit integers (signed numbers) 
*----------------------------------------------------------------------------------------
          ORG     $1200 ; Assume we have this numbers list (signed integer) 
NUMLIST   DC.W    -400,900,100,500,-700,54,87,45,624,789,32,45,21,460,-76,42,30,159,625,40,12,3,94,45,-65,88,5,-33,25,15,-4,37


          ORG     $2000
START:                 
          MOVEQ #0, D0 ;Counter for outer loop 
          LEA NUMLIST, A0
LOOPA     
          LEA NUMLIST, A1
          MOVEQ #0, D1 ;Counter for inner loop 
LOOPB     
          MOVE.W (A0),D2
          MOVE.W (A1),D3
          CMP.W  D3,D2 
          BGT   SKIPB
          MOVE.W D3,(A0) ;Swap the content of cell that A0 pointed it by D3
          MOVE.W D2,(A1) ;Swap the content of cell that A0 pointed it by D2
          
SKIPB     ADDQ.W  #1, D1
          ADDQ.W  #2, A1 ;Move pointer A1 to pointed the next cell
          CMPI.W  #32, D1
          BEQ   SKIPA 
          BRA   LOOPB

SKIPA     ADDQ.W  #2, A0 ;Move pointer A1 to pointed the next cell
          ADDQ.W  #1, D0
          CMPI.W  #32,D0
          
          BEQ   EXT 
          BRA   LOOPA
          
          
EXT       NOP

    SIMHALT            

    END    START        



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
