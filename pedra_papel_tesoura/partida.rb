class Partida
  def initialize
    @vitorias = [['tesoura', 'papel'],
                 ['papel', 'pedra'],
                 ['pedra', 'tesoura']]
  end

  def jogar(jogador1, jogador2)
    @partida = [jogador1, jogador2]

    vencedor_da_partida || 'empate'
  end

  private

  def vencedor_da_partida
    unless empate?
      @partida.permutation.each { |partida|
        return partida[0] if @vitorias.include? partida }
    end
  end

  def empate?
    @partida[0] == @partida[1]
  end
end
