class NamaLib
  def valida_num(num)
    if num.modulo(5).zero?
      if num.modulo(35).zero?
        'Nama Team'
      else
        'Nama'
      end
    elsif num.modulo(7).zero?
      if num.modulo(35).zero?
        'Nama Team'
      else
        'Team'
      end
    else
      num
    end
  end

  def create
    @result = []
    100.times { |num| @result << valida_num(num + 1) }
    @result.join(',')
  end
end

@nama = NamaLib.new

puts @nama.create
