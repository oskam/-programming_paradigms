declare
    fun {Reverse L}
       fun {Iterate R L}
          case L
          of nil then R
          [] H|T then {Iterate H|R T}
          end
       end
    in
       {Iterate nil L}
    end
    
    {Browse {Reverse [foo bar foobar baroffoos]}}
