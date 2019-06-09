: IMMEDIATE  last_word @ cfa 1 - dup c@ 1 or swap c! ;

: rot 
	>r swap 
	r> swap 
;

: over 
	>r dup 
	r> swap 
;

: 2dup 
	over 
	over 
;



: <> 
	= not 
;

: <= 
	> not 
;

: >= 
	< not 
; 



: if 
	' 0branch , 
	here 
	0  , 
; IMMEDIATE

: then 
	here 
	swap ! 
; IMMEDIATE



: repeat 
	here 
; IMMEDIATE

: until 
	' 0branch , , 
; IMMEDIATE

: for 
	' swap ,
	' >r , 
	' >r , 
	here  
	' r> , 
	' r> , 
	' 2dup , 
	' >r , 
	' >r , 
	' < ,  
	' 0branch ,  
	here 
	0 , 
	swap 
; IMMEDIATE

: endfor 
    ' r> , 
    ' lit , 
	1 ,   
    ' + , 
    ' >r , 
	' branch , 
    ,  
	here swap ! 
    ' r> , 
    ' drop , 
    ' r> , 
    ' drop ,  
;  IMMEDIATE 