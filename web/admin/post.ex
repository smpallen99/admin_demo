defmodule AdminDemo.ExAdmin.Post do
  use ExAdmin.Register

  register_resource AdminDemo.Post do

    index do 
      selectable_column

      column :name
      column :body
      column :published
      column :tags, fn(post) -> 
        if post.tags, do: Enum.reduce(post.tags, "",&(&2 <> " " <> &1.name))
      end
    end

    form post do
      inputs do
        input post, :name
        input post, :body
        input post, :published
      end

      inputs "Tags" do
        inputs :tags, as: :checkboxes, collection: AdminDemo.Tag.all
      end
    end

    show post do
      attributes_table do
        row :name
        row :body
        row :published
      end
      panel "Tags" do
        table_for post.tags do
          column :name, link: true
        end
      end
    end

    query do 
      %{all: [preload: :tags]}
    end 
  end
end
