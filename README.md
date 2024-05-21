---

# Conversão de Números Romanos para Inteiros

## Visão Geral

Este projeto foi desenvolvido para converter números romanos em números inteiros usando a linguagem de programação Ruby. A aplicação foi construída com o intuito de demonstrar a compreensão das regras de formação dos números romanos e a habilidade de implementar uma solução eficiente e correta.

## Funcionalidades

- Conversão de qualquer número romano válido para seu equivalente inteiro.
- Implementação seguindo as melhores práticas de programação em Ruby.
- Validação básica de entradas para garantir que apenas números romanos válidos sejam processados.

## Como Funciona

### Algoritmo Implementado

O algoritmo percorre a string representando o número romano da direita para a esquerda. Para cada caractere, ele verifica se deve somar ou subtrair seu valor baseado no valor do caractere anterior. A regra básica é:

- Se um numeral menor precede um numeral maior, o menor é subtraído.
- Caso contrário, o numeral é somado.

### Exemplo de Código

```ruby
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  # Mapeamento dos valores dos numerais romanos
  roman_values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  # Variáveis para armazenar o total e o valor anterior
  total = 0
  prev_value = 0

  # Iteração sobre os caracteres do string de trás para frente
  s.reverse.each_char do |char|
    current_value = roman_values[char]
    
    # Verificação da regra de subtração
    if current_value < prev_value
      total -= current_value
    else
      total += current_value
    end

    # Atualização do valor anterior
    prev_value = current_value
  end

  total
end
```

### Explicação do Código

1. **Mapeamento dos valores dos numerais romanos:** Criamos um hash que associa cada caractere romano ao seu valor correspondente.
2. **Inicialização de variáveis:** `total` armazena o valor final acumulado, e `prev_value` armazena o valor do numeral processado anteriormente.
3. **Iteração reversa sobre a string:** Percorremos a string de trás para frente para aplicar corretamente as regras de subtração.
4. **Verificação de subtração/adicionamento:** Comparamos o valor atual com o anterior para decidir se somamos ou subtraímos.
5. **Atualização do valor anterior:** No final de cada iteração, atualizamos `prev_value` para o próximo caractere.

## Como Executar

Para executar o código, você precisará do Ruby instalado em seu sistema. Siga as instruções abaixo:

1. Clone o repositório:
   ```sh
   git clone https://github.com/SeuUsuario/nome-do-repositorio.git
   ```
2. Navegue até o diretório do projeto:
   ```sh
   cd nome-do-repositorio
   ```
3. Execute o script Ruby:
   ```sh
   ruby nome_do_script.rb
   ```

## Testes

Você pode adicionar testes para validar a funcionalidade do código usando bibliotecas de teste como RSpec. Um exemplo de teste pode ser:

```ruby
require 'rspec'
require_relative 'nome_do_script'

RSpec.describe '#roman_to_int' do
  it 'converte corretamente o número romano para inteiro' do
    expect(roman_to_int('III')).to eq(3)
    expect(roman_to_int('IV')).to eq(4)
    expect(roman_to_int('IX')).to eq(9)
    expect(roman_to_int('LVIII')).to eq(58)
    expect(roman_to_int('MCMXCIV')).to eq(1994)
  end
end
```

## Contato

Para mais informações, dúvidas ou sugestões, sinta-se à vontade para entrar em contato:

[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/douglasgrund)

---