
```markdown
# Tarefa de Mentoria em Programação

## Descrição

Este repositório contém a resolução de três algoritmos desafiadores, parte de uma tarefa de mentoria em programação. 
A entrega desses algoritmos foi realizada com o objetivo de demonstrar meu entendimento e habilidades 
na implementação de soluções eficientes e bem estruturadas.

## Algoritmos Implementados

### 1. Conversão de Números Romanos para Inteiros

- **Arquivo:** `roman_to_int.rb`
- **Descrição:** Implementa a conversão de uma string representando um número romano em seu valor inteiro correspondente.
- **Exemplo de Uso:**
  ```ruby
  s = "MCMXCIV"
  result = roman_to_int(s)
  puts "O número romano #{s} corresponde ao inteiro #{result}."
  ```
- **Código:**
  ```ruby
  # @param {String} s
  # @return {Integer}
  def roman_to_int(s)
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

    s.each_char do |char|
      current_value = roman_values[char]
      if current_value > prev_value
        total += current_value - 2 * prev_value
      else
        total += current_value
      end
      prev_value = current_value
    end

    total
  end
  ```

### 2. Remoção de Elementos de um Array

- **Arquivo:** `remove_element.rb`
- **Descrição:** Remove todas as instâncias de um valor específico de um array e retorna o novo comprimento do array.
- **Exemplo de Uso:**
  ```ruby
  nums = [3, 2, 2, 3]
  val = 3
  new_length = remove_element(nums, val)
  puts "Novo comprimento do array: #{new_length}"
  ```
- **Código:**
  ```ruby
  # @param {Integer[]} nums
  # @param {Integer} val
  # @return {Integer}
  def remove_element(nums, val)
    i = 0
    nums.each do |num|
      if num != val
        nums[i] = num
        i += 1
      end
    end
    i
  end
  ```

### 3. Encontre Dois Números que Somam para um Valor Alvo

- **Arquivo:** `two_sum.rb`
- **Descrição:** Encontra dois números em um array que somam para um valor alvo e retorna seus índices.
- **Exemplo de Uso:**
  ```ruby
  nums = [2, 7, 11, 15]
  target = 9
  result = two_sum(nums, target)
  puts "Índices dos números que somam para #{target}: #{result}"
  ```
- **Código:**
  ```ruby
  # @param {Integer[]} nums
  # @param {Integer} target
  # @return {Integer[]}
  def two_sum(nums, target)
    num_map = {}

    nums.each_with_index do |num, index|
      complement = target - num
      if num_map.key?(complement)
        return [num_map[complement], index]
      end
      num_map[num] = index
    end

    []
  end
  ```

## Instruções para Execução

Para executar os códigos, certifique-se de ter o Ruby instalado em seu ambiente. Siga os passos abaixo:

1. Clone o repositório:
   ```bash
   git clone https://github.com/Grund89/graduar-nivel-0
   ```
2. Navegue até o diretório do repositório:
   ```bash
   cd NomeDoRepositorio
   ```
3. Execute os arquivos Ruby individualmente:
   ```bash
   ruby roman_to_int.rb
   ruby remove_element.rb
   ruby two_sum.rb
   ```

## Contato

Se você tiver dúvidas ou sugestões, sinta-se à vontade para entrar em contato comigo através do meu [LinkedIn](https://www.linkedin.com/in/douglasgrund).

---

Agradeço pela oportunidade de demonstrar minhas habilidades e estou ansioso para receber feedback sobre meu trabalho.

---

### 📲 Você pode me encontrar em:

[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/douglasgrund)

---
```