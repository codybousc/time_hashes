require('rspec')
require('time_hashes')

# time_hashes should print "Hooray!" if it is Friday
# time_hashes should print "Looks like somebody has a case of the Mondays" if it is Monday

describe('Time#time_hashes') do
    it("prints 'Hooray!' if the day is Friday") do
        expect(Time.new(2015, 4, 24).time_hashes()).to(eq("Hooray!"))
    end
    it("prints 'Looks like somebody has a case of the Mondays' if it's Monday") do
        expect(Time.new(2015, 4, 20).time_hashes()).to(eq("Looks like somebody has a case of the Mondays"))
    end
end

# returns true if current time is under daylight savings
# prints out "Daylight Savings Time is coming soon" if next week falls under daylight savings
describe('Time#day_light_savings') do
    it("returns true if it's currently Day Light Savings") do
        expect(Time.new().day_light_savings()).to(eq(true))
    end

    it("prints 'Daylight Savings Time is coming soon!' if next week is under daylight savings.") do
        expect(Time.new(2015, 3, 2).day_light_savings()).to(eq('Daylight Savings Time is coming soon!'))
    end
    it("prints 'Don't reset your clocks yet!") do
        expect(Time.new(2015, 1, 1).day_light_savings()).to(eq("Don't reset your clocks yet!"))
    end
end
