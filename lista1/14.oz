declare
    fun {FindAll V T}
       case T
       of leaf then nil
       [] tree(key:Key val:Val left:L right:R) then
          if Val == V then {Append {FindAll V L} Key|{FindAll V R}}
          else {Append {FindAll V L} {FindAll V R}} end
       end
    end

   Tree = tree(key:d
	       val:42
	       left:tree(key:b
			 val:1
			 left:tree(key:a
				   val:42
				   left:leaf
				   right:leaf)
			 right:tree(key:c
				    val:0
				    left:leaf
				    right:leaf))
	       right:tree(key:e
			  val:42
			  left:leaf
			  right:leaf))

   {Browse {FindAll 42 Tree}}