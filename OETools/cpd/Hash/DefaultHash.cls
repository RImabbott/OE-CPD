 
 /*------------------------------------------------------------------------
    File        : DefaultHash
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : Mark Abbott
    Created     : Thu Oct 31 15:50:59 GMT 2013
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING OETools.cpd.Hash.AbstractHash.

ROUTINE-LEVEL ON ERROR UNDO, THROW.

CLASS OETools.cpd.Hash.DefaultHash INHERITS AbstractHash: 
	/*------------------------------------------------------------------------------
	 Purpose: Default class constructor
	 Notes:
	------------------------------------------------------------------------------*/
	CONSTRUCTOR PUBLIC DefaultHash (  ):
		SUPER ().
		
	END CONSTRUCTOR.	
	

	/*------------------------------------------------------------------------------
	 Purpose: Hashes data using OpenEdge ENCODE function
	 Notes:
	------------------------------------------------------------------------------*/
	METHOD PUBLIC OVERRIDE CHARACTER Hash( INPUT pcData AS CHARACTER ):

        RETURN ENCODE(pcData).

    END METHOD.

END CLASS.