class ConnectUsersToArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true
    end
  end
end
