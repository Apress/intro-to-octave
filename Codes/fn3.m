function result = factorial( n )
	if( n == 0 )
		result = 1;
		return;
	else
		result = prod( 1:n );
	endif
endfunction