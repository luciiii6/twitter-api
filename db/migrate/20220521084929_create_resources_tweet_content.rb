class CreateResourcesTweetContent < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :description
      t.string :url
      t.string :image_url

      t.timestamps
    end

    create_table :tweet_contents do |t|
      t.string :content

      t.timestamps
    end

    create_table :resources_tweet_contents, id: false do |t|
      t.belongs_to :tweet_content
      t.belongs_to :resource
    end
  end
end
