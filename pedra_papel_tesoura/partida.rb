class Partida
  def initialize
    @vitorias = [['tesoura', 'papel'],
                 ['papel', 'pedra'],
                 ['pedra', 'tesoura']]
  end

  def jogar(jogador1, jogador2)
    [jogador1, jogador2].permutation do |partida|
      return partida[0] if @vitorias.include? partida
    end

    'empate'
  end
end
