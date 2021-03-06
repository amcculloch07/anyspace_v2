class AddDisclaimerToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :disclaimer, :text
    add_column :venues, :rule_7, :string
    add_column :venues, :rule_8, :string
    add_column :venues, :rule_9, :string
    add_column :venues, :rule_10, :string
    add_column :venues, :dress_code_1, :string
    add_column :venues, :dress_code_2, :string
    add_column :venues, :dress_code_3, :string
    add_column :venues, :dress_code_4, :string
    add_column :venues, :dress_code_5, :string
    add_column :venues, :dress_code_6, :string
    add_column :venues, :dress_code_7, :string
    add_column :venues, :dress_code_8, :string
    add_column :venues, :dress_code_9, :string
    add_column :venues, :dress_code_10, :string
    add_column :venues, :dress_code_11, :string
    add_column :venues, :dress_code_12, :string
    add_column :venues, :dress_code_13, :string
    add_column :venues, :dress_code_14, :string
    add_column :venues, :dress_code_15, :string
    add_column :venues, :dress_code_16, :string
    add_column :venues, :private, :boolean
    add_column :venues, :semiprivate, :boolean
    add_column :venues, :min_capacity, :integer
    add_column :venues, :state_sales_tax, :decimal
    add_column :venues, :gratuity, :decimal
    add_column :venues, :drink_1_desc, :string
    add_column :venues, :drink_2_desc, :string
    add_column :venues, :drink_3_desc, :string
    add_column :venues, :drink_4_desc, :string
    add_column :venues, :drink_5_desc, :string
    add_column :venues, :food_1_desc, :string
    add_column :venues, :food_2_desc, :string
    add_column :venues, :food_3_desc, :string
    add_column :venues, :food_4_desc, :string
    add_column :venues, :food_5_desc, :string
    add_column :venues, :food_6_desc, :string
    add_column :venues, :food_7_desc, :string
    add_column :venues, :food_8_desc, :string
    add_column :venues, :food_9_desc, :string
    add_column :venues, :food_10_desc, :string
    add_column :venues, :food_11_desc, :string
    add_column :venues, :food_12_desc, :string
    add_column :venues, :food_13_desc, :string
    add_column :venues, :food_14_desc, :string
    add_column :venues, :food_15_desc, :string
    add_column :venues, :food_16_desc, :string
    add_column :venues, :food_17_desc, :string
    add_column :venues, :food_18_desc, :string
    add_column :venues, :food_19_desc, :string
    add_column :venues, :food_20_desc, :string
    add_column :venues, :food_21_desc, :string
    add_column :venues, :food_22_desc, :string
    add_column :venues, :food_23_desc, :string
    add_column :venues, :food_24_desc, :string
    add_column :venues, :food_25_desc, :string
    add_column :venues, :food_26_desc, :string
    add_column :venues, :food_27_desc, :string
    add_column :venues, :food_28_desc, :string
    add_column :venues, :food_29_desc, :string
    add_column :venues, :food_30_desc, :string
    add_column :venues, :food_31_desc, :string
    add_column :venues, :food_32_desc, :string
    add_column :venues, :food_33_desc, :string
    add_column :venues, :food_34_desc, :string
    add_column :venues, :food_35_desc, :string
    add_column :venues, :food_36_desc, :string
    add_column :venues, :food_37_desc, :string
    add_column :venues, :food_38_desc, :string
    add_column :venues, :food_39_desc, :string
    add_column :venues, :food_40_desc, :string
    add_column :venues, :food_6, :string
    add_column :venues, :food_7, :string
    add_column :venues, :food_8, :string
    add_column :venues, :food_9, :string
    add_column :venues, :food_10, :string
    add_column :venues, :food_11, :string
    add_column :venues, :food_12, :string
    add_column :venues, :food_13, :string
    add_column :venues, :food_14, :string
    add_column :venues, :food_15, :string
    add_column :venues, :food_16, :string
    add_column :venues, :food_17, :string
    add_column :venues, :food_18, :string
    add_column :venues, :food_19, :string
    add_column :venues, :food_20, :string
    add_column :venues, :food_21, :string
    add_column :venues, :food_22, :string
    add_column :venues, :food_23, :string
    add_column :venues, :food_24, :string
    add_column :venues, :food_25, :string
    add_column :venues, :food_26, :string
    add_column :venues, :food_27, :string
    add_column :venues, :food_28, :string
    add_column :venues, :food_29, :string
    add_column :venues, :food_30, :string
    add_column :venues, :food_31, :string
    add_column :venues, :food_32, :string
    add_column :venues, :food_33, :string
    add_column :venues, :food_34, :string
    add_column :venues, :food_35, :string
    add_column :venues, :food_36, :string
    add_column :venues, :food_37, :string
    add_column :venues, :food_38, :string
    add_column :venues, :food_39, :string
    add_column :venues, :food_40, :string
    add_column :venues, :food_6_price, :integer
    add_column :venues, :food_7_price, :integer
    add_column :venues, :food_8_price, :integer
    add_column :venues, :food_9_price, :integer
    add_column :venues, :food_10_price, :integer
    add_column :venues, :food_11_price, :integer
    add_column :venues, :food_12_price, :integer
    add_column :venues, :food_13_price, :integer
    add_column :venues, :food_14_price, :integer
    add_column :venues, :food_15_price, :integer
    add_column :venues, :food_16_price, :integer
    add_column :venues, :food_17_price, :integer
    add_column :venues, :food_18_price, :integer
    add_column :venues, :food_19_price, :integer
    add_column :venues, :food_20_price, :integer
    add_column :venues, :food_21_price, :integer
    add_column :venues, :food_22_price, :integer
    add_column :venues, :food_23_price, :integer
    add_column :venues, :food_24_price, :integer
    add_column :venues, :food_25_price, :integer
    add_column :venues, :food_26_price, :integer
    add_column :venues, :food_27_price, :integer
    add_column :venues, :food_28_price, :integer
    add_column :venues, :food_29_price, :integer
    add_column :venues, :food_30_price, :integer
    add_column :venues, :food_31_price, :integer
    add_column :venues, :food_32_price, :integer
    add_column :venues, :food_33_price, :integer
    add_column :venues, :food_34_price, :integer
    add_column :venues, :food_35_price, :integer
    add_column :venues, :food_36_price, :integer
    add_column :venues, :food_37_price, :integer
    add_column :venues, :food_38_price, :integer
    add_column :venues, :food_39_price, :integer
    add_column :venues, :food_40_price, :integer
  end
end
