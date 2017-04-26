(define mymap
    (lambda (fun ls)
        (cond
            ((null? ls)
                '()
            )
            (else
                (cons (fun (car ls)) (mymap fun (cdr ls)))
            )
        )
    )
)
;cons - tworzy parę
;car - bierze głowę
;cdr - bierze ogon
