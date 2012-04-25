ActionController::Routing::Routes.draw do |map|

  map.resources :home, :singular => :home_item
  map.resources :sobre, :singular => :sobre_item
  map.resources :noticias
  map.resources :servicos
  map.resources :sitecontacts
  map.resources :videos
  map.resources :depoimentos
  map.resources :revendas, :collection => {:resultado => :post}
  map.resources :linhas
  map.resources :politica_qualidade, :singular => :politica_qualidade_item
  map.resources :missao_e_visao, :singular => :missao_e_visao_item
  map.resources :responsabilidade_social, :singular => :responsabilidade_social_item
  map.resources :downloads
  map.resources :indique, :singular => :indique_item
  map.resources :indicates
  map.resources :testimonials
  map.resources :revendas_representantes
  map.resources :obras
  map.resources :cases
  map.resources :representantes, :collection => {:resultado => :post}
  map.resources :termos_uso, :singular => :termos_uso_item
  
  map.resources :sheets, :member => { :filtracao => :get}
  map.resources :pesquisas
  map.resources :linhas do |linhas|
    linhas.resources :categorias do |categorias|
      categorias.resources :produtos do |produtos|
        produtos.resources :imagens
      end
    end
  end
  
  map.root :controller => "home"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
