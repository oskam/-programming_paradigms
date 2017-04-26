(define (pochodna exp var)
    (define (variable? x)
        (symbol? x))
    (define (same-variable? v1 v2)
        (and (variable? v1) (variable? v2) (eq? v1 v2)))
    (define (sum? x)
        (and (pair? x) (eq? (cadr x) '+)))
    (define (substraction? x)
        (and (pair? x) (eq? (cadr x) '-)))
    (define (product? x)
        (and (pair? x) (eq? (cadr x) '*)))
    (define (division? x)
        (and (pair? x) (eq? (cadr x) '/)))

    (cond
        ((number? exp)
            0)
        ((variable? exp)
            (if (same-variable? exp var)
                1
                0)
        )
        ((sum? exp)
            (list
                (pochodna (car exp) var) 
                '+
                (pochodna (caddr exp) var))
        )
        ((substraction? exp)
            (list
                (pochodna (car exp) var) 
                '-
                (pochodna (caddr exp) var))
        )
        ((product? exp)
            (list
                (list
                    (car exp)
                    '*
                    (pochodna (caddr exp) var))
                '+
                (list 
                    (pochodna (car exp) var)
                    '*
                    (caddr exp)))
        )

        ((division? exp)
            (list 
                (list
                     (list 
                        (pochodna (car exp) var)
                        '*
                        (caddr exp))
                    '-
                    (list
                        (car exp)
                        '*
                        (pochodna (caddr exp) var)))
                '/
                (list
                    (caddr exp)
                    '*
                    (caddr exp))
            )
        )
        (else
            (error "unknown expression type - pochodna" exp)
        )
    )
)

;cadr - zwraca drugi element listy
;caddr - zwraca trzeci element listy


