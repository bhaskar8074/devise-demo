class ProductsController < ApplicationController
  def create
    files = Dir.glob("#{Rails.root}/public/products/*.csv")
    files.each do |file_path|
      Product.import(file_path)
    end
    redirect_to root_path, notice: "Products imported successfully!"
  end
end
