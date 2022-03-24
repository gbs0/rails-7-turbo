require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  Rails.application.load_seed
  
  setup do 
    @product = products(:one)
    @product_two = products(:two)
    @invalid_product = products(:invalid)
  end

  test "visiting the index" do
    visit products_url

    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Quantity", with: @product.quantity
    click_on "Create Product"

    assert_text "Product was successfully created."
    click_on "Back"
  end

  test "Showing a Product" do
    visit products_path
    click_link @product.name

    assert_selector "h1", text: @product.name
  end

  test "updating a Product" do
    visit products_path
    assert_selector "h1", text: "Products"
    
    click_on "Edit", match: :first
    assert_selector "h1", text: "Edit Product"

    fill_in "Name", with: @product_two.name
    fill_in "Price", with: @product_two.price
    fill_in "Quantity", with: @product_two.quantity
    click_on "Update Product"

    assert_selector "h1", text: "Products"
    assert_text "Product was successfully updated."
  end

  test "destroying a Product" do
  end
end
