class Hash
    def duplicate_values
        values = []
        duplicates = []
        self.each_value do |value|
            values.include?(value) ? duplicates << value : values << value
        end
        duplicates
    end
end

scores =
{
    a: 100,
    b: 100,
    c: 83,
    d: 50,
    e: 13,
    f: 6,
    g: 100,
    h: 13,
    i: 50,
    j: 80
}

p scores.duplicate_values
puts

class Fixnum
    BASE = 60
    def seconds
        self
    end

    def minutes
        self * BASE
    end

    def hours
        self.minutes * BASE
    end

    def days
        self.hours * 24
    end

    def custom_times
        i = 0
        while i < self
            yield(i+1) #1,2,3,4,5
            i += 1
        end
    end

end

p Time.now + 45.minutes
p Time.now + 2.hours
p Time.now + 10.days

5.times { |index| puts index }
puts

5.custom_times { |index| puts index }
