defmodule AdminDemo.ExAdmin.Tag do
  use ExAdmin.Register

  register_resource AdminDemo.Tag do

    show tag do
      attributes_table do
        row :name
      end
      
      panel "Posts" do
        table_for tag.posts do
          column :name, link: true
        end
      end
    end

    query do 
      %{all: [preload: :posts]}
    end 
  end
end
