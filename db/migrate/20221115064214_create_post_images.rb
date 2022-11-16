class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      # 下記3つ(idは自動で作られるので定義なし)
      t.string:shop_name
      t.text:caption
      t.integer:user_id
      
      t.timestamps
    end
  end
end
