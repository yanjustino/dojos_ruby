class Partida
  def initialize
    @vitorias = [['tesoura', 'papel'],
                 ['papel', 'pedra'],
                 ['pedra', 'tesoura']]
  end

  def jogar (jogador1, jogador2)
    @partida = [jogador1, jogador2]

    definir_vencedor || 'empate'
  end

  private

  def definir_vencedor
    jogadas.each { |jogada| return jogada.first if vencedor? jogada } unless empate?
  end

  def empate?
    @partida.first == @partida.last
  end

  def jogadas
    @partida.permutation
  end

  def vencedor? (jogada)
    @vitorias.include? jogada
  end
end
