def incrementar x, delta=1
    begin
    x=x+delta
    rescue TypeError
        raise RuntimeError
    end
end

def concatenar *args
    args.join(" ").gsub("\n", '').squeeze('')
end
