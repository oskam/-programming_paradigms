declare
    fun {Merge L1 L2 L3}
        fun {M L1 L2}
	        case L1 # L2
	        of nil # L2 then L2
	        [] L1 # nil then L1
	        [] (H1|T1) # (H2|T2) then
                if H1<H2 then
                    H1|{M T1 L2}
                else
                    H2|{M L1 T2}
                end
	        end
        end
    in
        {M L1 {M L2 L3}}
    end

    {Browse {Merge [1 5 6 10] [3 7 9] [2 4 8 11 12]}}
