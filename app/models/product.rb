class Product < ApplicationRecord
  def self.import(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      Product.create!(row.to_hash)
    end
  end
end
