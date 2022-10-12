require 'minitest/autorun'
require 'minitest/spec'
require 'ejer4'

describe '#minutes_in_words' do
    it 'cuando el valor es entre 0 y 10' do
        minutes= 5
        assert_equal("en punto", minutes_in_words(minutes))
    end
    it 'cuando el valor es entre 21 y 34' do
        minutes= 26
        assert_equal("y media", minutes_in_words(minutes))
    end
    it 'cuando el valor no esta entre 0 y 59' do
        minutes= 100
        assert_equal("error", minutes_in_words(minutes))
    end
end

describe '#hours_in_words' do
    it 'cuando el valor es de tipo Time' do
        time = Time.new(2019, 10, 31, 20, 15, 31)
        assert_equal("son las 20 y cuarto", hours_in_words(time))
    end
    it 'cuando el valor no es una hora válida' do
        time= "12:30"
        assert_raises(RuntimeError) do
            hours_in_words(time)
        end
    end
end