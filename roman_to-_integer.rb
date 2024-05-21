# @param {String} s
# @return {Integer}

def roman_to_int (s)
  roman_values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }

  total = 0
  prev_value = 0

  s.each_char do |char| # itera sobre cada caracter da string 's'
    current_value = roman_values[char] # armazena o valor do numeral romano atual

    # Lógica para soma e subtração
    if current_value > prev_value

    total
  end






end
