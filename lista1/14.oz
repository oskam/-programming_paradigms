functor
import
    Browser(browse:Browse)
define
    fun {FindAll V T}
       case T
       of leaf then nil
       [] tree(key:Key val:Val left:L right:R) then
          if Val == V then {Append {FindAll V L} Key|{FindAll V R}}
          else {Append {FindAll V L} {FindAll V R}} end
       end
    end
    Tree
in
    Tree = tree(key:'E'
    	    val:2
    	    left:tree(key:'B'
    		      val:1
    		      left:tree(key:'A'
    				val:42
    				left:leaf
    				right:leaf)
    		      right:tree(key:'D'
    				 val:0
    				 left:tree(key:'C'
    					   val:42
    					   left:leaf
    					   right:leaf)
    				 right:leaf))
    	    right:tree(key:'F'
    		       val:42
    		       left:leaf
    		       right:tree(key:'G'
                       val:42
                       left:leaf
                       right:leaf)))

   {Browse {FindAll 42 Tree}}
end
