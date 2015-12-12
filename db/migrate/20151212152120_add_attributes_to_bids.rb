class AddAttributesToBids < ActiveRecord::Migration
  def change
    add_column :bids, :minimum_bid, :float
  end
end
