namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD") { %x(rails db:drop) }
      show_spinner("Criando BD") { %x(rails db:create) }
      show_spinner("Migrando BD") { %x(rails db:migrate) }
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)
    else
      puts "Ambiente errado!!"
    end
  end

  desc "Cadastra as moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando moedas...") do
      coins = [
        {
          description: "Bitcoin", 
          acronyum: "BTC",
          url_img: "https://logodownload.org/wp-content/uploads/2017/06/bitcoin-logo-1-1.png",
          mining_type: MiningType.find_by(acronym: "PoW")
        },
        {
          description: "Ethereum", 
          acronyum: "ETH",
          url_img: "https://bridge.umbria.network/assets/images/icon/ethicon.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Dash", 
          acronyum: "DASH",
          url_img: "https://bistro160.com.br/wp-content/themes/imgs_tl3p0/cota%C3%A7%C3%A3o-dash_hqp2w.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Iota", 
          acronyum: "IOT",
          url_img: "https://seeklogo.com/images/I/iota-miota-logo-637A80FF6E-seeklogo.com.png?v=638000628690000000",
          mining_type: MiningType.all.sample
        },
        {
          description: "ZCash", 
          acronyum: "ZEC",
          url_img: "https://s2.coinmarketcap.com/static/img/coins/200x200/1437.png",
          mining_type: MiningType.all.sample
        }
      ]

      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end

  desc "Cadastra os tipo de mineracao"
  task add_mining_types: :environment do
    show_spinner("Cadastrando os tipos de mineracao") do
      mining_types = [
        {
          description: "Proof of Word",
          acronym: "PoW"
        },
        {
          description: "Proof of Stake",
          acronym: "PoS"
        },
        {
          description: "Proof of Capacity",
          acronym: "PoC"
        }
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end 

  private
  def show_spinner(msg_start, msg_end = "Concluido")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}...")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
