OUTPUT_ARCH(or32)
SEARCH_DIR(.)
__DYNAMIC  =  0;

MEMORY
{
	vectors : ORIGIN = 0x00000000, LENGTH = 0x1000
    rom     : ORIGIN = 0x00001000, LENGTH = 0x7000
	ram     : ORIGIN = 0x20000000, LENGTH = (0x8000 - 0x200)
}


/* Stack information variables */
_min_stack      = 0x200;   /* stack space to reserve */


SECTIONS
{	
	.vectors :
	{
		*(.vectors)
	} > vectors
                              
	.text : {
		_stext = .;
		*(.text)
		_etext  =  .;
		__CTOR_LIST__ = .;
		LONG((__CTOR_END__ - __CTOR_LIST__) / 4 - 2)
		*(.ctors)
		LONG(0)
		__CTOR_END__ = .;
		__DTOR_LIST__ = .;
		LONG((__DTOR_END__ - __DTOR_LIST__) / 4 - 2)
		*(.dtors)
		LONG(0)
		__DTOR_END__ = .;
		*(.lit)
		*(.shdata)
		_endtext = .;
	}  > rom

	.rodata : {
		*(.rodata);
		*(.rodata.*)
	} > rom
	
	.shbss :
	{
		*(.shbss)
	} > ram
	
	.talias :
	{ 
	}  > ram
	
	.data : {
		sdata  =  .;
		_sdata  =  .;
		*(.data)
		edata  =  .;
		_edata  =  .;
	} > ram
	
	.bss :
	{
		_bss_start = .;
		*(.bss)
		*(COMMON)
		_bss_end = .;
	} > ram
	
	/* ensure there is enough room for stack */
        .stack (NOLOAD): {
                . = ALIGN(4);
		. = . + _min_stack ;
                . = ALIGN(4);
                stack = . ;
                _stack = . ;
        } > ram
	
	.stab  0 (NOLOAD) : 
	{
		[ .stab ]
	}
	
	.stabstr  0 (NOLOAD) :
	{
		[ .stabstr ]
	}
}
PROVIDE(_fstack = ORIGIN(ram) + LENGTH(ram) - 4);
