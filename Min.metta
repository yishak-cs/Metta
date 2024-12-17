(= (min $list) (
    if (== () $list)
        ()  
        (if (== () (cdr-atom $list))
            (car-atom $list)  
            (
                let* (
                    ($head (car-atom $list))
                    ($tail-min (min (cdr-atom $list)))
                )
                (if (== () $tail-min)
                    $head
                    (if (< $head $tail-min)
                        $head
                        $tail-min
                    )
                )
            )
)))

; Tests
!(min (5 7 6 3))    ; should return 3
!(min (1))      ; should return 1
!(min ())       ; should return ()