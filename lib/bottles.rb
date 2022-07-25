class Bottles
  def song
    verses(99, 0)
  end

  def verses(high, low)
    high
      .downto(low)
      .map { |v| verse(v) }
      .join("\n")
  end

  def verse(number)
    case number
    when 0
      verse_zero
    when 1
      verse_one
    when 2
      verse_two
    else
      verse_over_two(number)
    end
  end
end

def verse_over_two(num)
  "#{num} bottles of beer on the wall, " +
  "#{num} bottles of beer.\n" +
  "Take one down and pass it around, " +
  "#{num-1} bottles of beer on the wall.\n"
end

def verse_two
  "2 bottles of beer on the wall, " +
  "2 bottles of beer.\n" +
  "Take one down and pass it around, " +
  "1 bottle of beer on the wall.\n"
end

def verse_one
  "1 bottle of beer on the wall, " +
  "1 bottle of beer.\n" +
  "Take it down and pass it around, " +
  "no more bottles of beer on the wall.\n"
end

def verse_zero
  "No more bottles of beer on the wall, " +
  "no more bottles of beer.\n" +
  "Go to the store and buy some more, " +
  "99 bottles of beer on the wall.\n"
end
