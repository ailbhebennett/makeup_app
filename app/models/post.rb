class Post < ActiveRecord:: Migration\[6.0]
  belongs_to:Review

  def change

    create_table: post do |t|
      t.string:name
    end
  end
end
