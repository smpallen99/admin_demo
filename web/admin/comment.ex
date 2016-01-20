defmodule AdminDemo.ExAdmin.Comment do
  use ExAdmin.Register

  register_resource AdminDemo.Comment do
    index do 
      selectable_column

      column :body
      column :approved
    end

    form comment do
      inputs do
        input comment, :body
        input comment, :approved
        input comment, :post, collection: AdminDemo.Post.all
      end
    end

    show comment do
      attributes_table do
        row :body
        row :approved
      end
    end

    query do 
      %{all: [preload: :post]}
    end 
  end
end
