class CadernoController < ApplicationController
  def primeira_folha
    @nome = 'Joao Guilherme'
    @mensagem = params['mensagem']
  end

  def segunda_folha; end

  def terceira_folha; end

  def quarta_folha; end

  def quinta_folha
    cookies[:curso] = 'Curso de Ruby on Rails [ COOKIE ]'
  end

  def sexta_folha; end
end
