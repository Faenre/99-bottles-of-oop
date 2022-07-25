class Bottles
  def verse(number)
    str = "#{number} bottles of beer on the wall, "
    str += "#{number} bottles of beer.\n"
    str += "Take one down and pass it around, "
    str += "#{number - 1} bottles of beer on the wall.\n"
    str
  end

  private

  def number_of_bottles(num)
    return "no more bottles" if (num == 0)

  end
end
