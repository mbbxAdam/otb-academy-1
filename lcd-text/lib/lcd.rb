class LCD

  NUM_TO_LCD = {
    0 => ([
      ' _ ',
      '| |',
      '|_|',
    ]), 1 => ([
      '   ',
      '  |',
      '  |',
    ]), 2 => ([
      ' _ ',
      ' _|',
      '|_ ',
    ]), 3 => ([
      ' _ ',
      ' _|',
      ' _|',
    ]), 4 => ([
      '   ',
      '|_|',
      '  |',
    ]), 5 => ([
      ' _ ',
      '|_ ',
      ' _|',
    ]), 6 => ([
      ' _ ',
      '|_ ',
      '|_|'
    ]), 7 => ([
      ' _ ',
      '  |',
      '  |',
    ]), 8 => ([
      ' _ ',
      '|_|',
      '|_|',
    ]), 9 => ([
      ' _ ',
      '|_|',
      ' _|',
    ])
  }

  def convert(num)
    #num.to_s.split("").map { |num| NUM_TO_LCD[num.to_i] }
    split_nums = num.split("").map { |num| num.to_i }
    (0..2).map do |i|
      split_nums.map { |num| NUM_TO_LCD[num][i] }.join
    end.join("\n")
  end
end