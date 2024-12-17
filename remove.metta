(= (remove $list $value) (
    if (== () $list) 
        ()  
        (
            let* (
                ($head (car-atom $list)) 
                ($tail (cdr-atom $list))  
                ($dummy (remove $tail $value))  ; Recursive call on the tail
            )
            (if (== $head $value) 
                $dummy ; return dummy only if condition is true
                (cons-atom $head $dummy) 
            )
        )
))
!(remove (1 2 3 4 5 6) 2 )