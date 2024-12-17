(= (append $list $value) (
    if (== () $list)
        (cons-atom $value ())
        (
            let* (                                      
                ($head (car-atom $list))  
                ($tail (cdr-atom $list))   
                ($dummy (append $tail $value))  
            ) 
            (cons-atom $head $dummy)   
        )
))

!(append (1 2 3 4 5 6) 2 )