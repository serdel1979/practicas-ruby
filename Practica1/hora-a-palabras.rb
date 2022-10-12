def minutes_in_words(minutes)
    case minutes.to_i
    when 0..10 then "en punto"
    when 11..20 then "y cuarto"
    when 21..34 then "y media"
    when 35..44 then "menos veinticinco"
    when 45..55 then "menos cuarto"
    when 56..59 then "casi las"
    else "error"
    end
end
def hours_in_words(time)
    begin
        minutes= time.strftime("%M")
        "son las #{time.strftime("%H")} #{minutes_in_words(minutes)}"
    rescue 
        raise RuntimeError
    end 
end

