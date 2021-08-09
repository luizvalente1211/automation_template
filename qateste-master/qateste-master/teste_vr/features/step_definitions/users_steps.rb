Quando('faço uma requisição get para o serviço Users') do
    @request_users = users.get_users
  end
  
  Então('o serviço Users deve responder com {int}') do |status_code|
      expect(@request_users.code).to eq status_code
  end
  
  Então('retorna a lista de usuários') do
   expect(@request_users.message).not_to be_empty
  end

 # @get_user_id
  Quando('faço uma requisição get para o serviço Users passando o id') do
     @id = sort_id.to_i
     print "ID selecionado: #{@id} \n"
     print "Usuário selecionado: #{@request_users = users.get_user(@id)}\n"
    
  end
  
  Então('retorna o usuário') do
      expect(@request_users.parsed_response['ID']) == @id
      print "Id comparado: #{@id}\n"
  end

  # post
  Quando('faço uma requisição POST para o serviço Users') do
       
    @payload_users = build(:user).user_hash
    @request_users = users.post_users(@payload_users)
  end
  
  Então('retorna usuário criado') do
   
  end