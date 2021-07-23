class Subsequence
  attr_accessor :seq
  def initialize(s)
    @seq = s + "."
  end
  def len
    return @seq.length
  end
end

class MakeCount
  attr_accessor :tmp, :count, :s
  def initialize(s)
    @s = s
    @tmp = ''
    @count = 1
    @len = @s.len()
  end
  def make_seq

      for i in 1..@len - 1 do
          if @s.seq[i] != @s.seq[i-1]
            @tmp += count.to_s
            @tmp += @s.seq[i-1]
            @count = 1
          else
            @count += 1
          end
      end
    @s = Subsequence.new(@tmp)
    @tmp = ''
  	@s.seq[0...-1]
  end
end
class MakeCountForN
		attr_accessor :n, :subsequnce, :makecount
		def initialize(n, subsequnce, makecount)
    		@n = n
    		@subsequnce = subsequnce
    		@makecount = makecount
		end
		def print_result
			a = @subsequnce.new('11')
			b = @makecount.new(a)
			result = '11'
			if @n.to_i == 1
				puts '1'
			else
  				puts '1'
				b.make_seq
  				result = b.s.seq
  				puts result[0...-1]
				for i in 2...@n.to_i do
  					a = @subsequnce.new(result[0...-1])
  					b = @makecount.new(a)
					b.make_seq
  					result = b.s.seq
  					puts result[0...-1]
				end
			end
		end
	end
puts "Enter N"
n = gets.chomp
x = MakeCountForN.new(n.to_i, Subsequence, MakeCount)
x.print_result