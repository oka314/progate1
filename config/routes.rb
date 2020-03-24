Rails.application.routes.draw do
  root 'home#top'
  resources :home
  resources :posts
  resources :users
end


.pickup-product
  .pickup-product__head
    ピックアップカテゴリー
  .pickup-product__box
    .pickup-product__box--head
      = link_to "/", class: "link-btn" do
        新規投稿商品
    .product-lists
      .product-list
        = link_to "#", class:"product-link" do
          .product-image-box
            - @images.each do |image|
              = image.image
          .product-link__description
            .product-name
              -@products.each do |product|
                = product.name
            .product-cost
              %ul{class: "product-cost__list"}
                %li
                  -@products.each do |product|
                    = product.price
                %li{class: "like-btn"}
                  ★0
            .product-tax
              (税込み)
      .product-list
        = link_to new_user_registration_path, class:"product-link" do
          .product-image-box
            - @images.each do |image|
              = image.image
          .product-link__description
            .product-name
              product2
            .product-cost
              %ul{class: "product-cost__list"}
                %li
                  20000円
                %li{class: "like-btn"}
                  ★0
            .product-tax
              (税込み)
      .product-list
        = link_to new_user_registration_path, class:"product-link" do
          .product-image-box
            = image_tag(src="https://s3-ap-northeast-1.amazonaws.com/mercarimaster/uploads/captured_image/content/7/a001.png", class: "product-image")
          .product-link__description
            .product-name
              product1
            .product-cost
              %ul{class: "product-cost__list"}
                %li
                  10000円
                %li{class: "like-btn"}
                  ★0
            .product-tax
              (税込み)
