module ApplicationHelper
  def data_br(data_us) # converte a data padrao us para padrao br
    data_us.strftime('%d/%m/%Yi') # strftime formata a data
  end

  def locale
    I18n.locale == :en ? 'Estados Unidos' : 'Portugues do Brasil'
  end

  def hora_now(data) # formata e retorna somente as horas, minutos e segundos
    data.strftime('%H:%M:%S')
  end

  def nome_aplicacao # imprime o nome do programa
    'CRYPTO WALLET APP'
  end

  def ambiente_rails
    if Rails.env.development?
      'Desenvolvimento'
    elsif Rails.env.production?
      'Producao'
    else
      'Teste'
    end
  end
end
