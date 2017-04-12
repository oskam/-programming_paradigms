declare
    proc {Game Id1 Id2}
        In1 In2
        fun {Player L Id}
            case L
            of H|T then
                {Browse Id#H}
                {Delay 1000}
                case H
                of 'ping' then
                    'pong'|{Player T Id}
                [] 'pong' then
                    'ping'|{Player T Id}
                end
            end
        end
    in
        thread In1 = {Player In2 Id1} end
        thread In2 = 'ping'|{Player In1 Id2} end
    end

    {Game p1 p2}
