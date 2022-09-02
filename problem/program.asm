//Juliana Olarte Dittrich
//000443952
//juliana.olarte@upb.edu.co

(INICIO) 
        @KBD
        D=M
        @67		//DIRECCION DE C
        D=D-A 
        @BORRAR
        D;JEQ
        @KBD
        D=M
        @84		//DIRECCION DE T
        D=D-A 
        @CRUZ
        D;JEQ
        @INICIO
        0;JMP
 
(BORRAR)
        @16384                 //16384 + (128*32)
        D=A
        @IDIB                 //INICIO DEL DIBUJO
        M=D 
        @8192                  //CANTIDAD DE REGISTROS A PINTAR
        D=A
        @CONTADOR                  //CONTADOR PARA LAS FILAS
        M=D
        @1
        D=A 
        @SALTAR
        M=D
        @COLOR
        M=0
        @DIR1
        0;JMP

 (CRUZ)
        @16400 
        D=A
        @IDIB 
        M=D 
        @256 
        D=A
        @CONTADOR 
        M=D
        @32
        D=A 
        @SALTAR
        M=D
        @COLOR
        M=1
        @BOOLEANO
        M=0
        @DIR1
        0;JMP

 (CRUZ2)
        @20480 
        D=A
        @IDIB 
        M=D 
        @32 
        D=A
        @CONTADOR 
        M=D
        @1
        D=A 
        @SALTAR
        M=D
        @COLOR
        M=-1
        @BOOLEANO
        M=1
        @DIR1
        0;JMP

(DIR1)
        @IDIB 
        D=M
        @pscreen
        M=D 
 
(PINTAR)
        @CONTADOR 
        D=M 
        @END
        D;JEQ 
        @COLOR
        D=M 
        @pscreen
        A=M 
        M=D 
        @CONTADOR 
        M=M-1
        @SALTAR
        D=M
        @pscreen
        M=M+D 
        @PINTAR
        0;JMP

(END)
        @BOOLEANO
        D=M 
        @CRUZ2
        D;JEQ

        @INICIO
        0;JMP

