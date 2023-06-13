require "application_system_test_case"

class FruitsTest < ApplicationSystemTestCase
  setup do
    @fruit = fruits(:one)
  end

  test "visiting the index" do
    visit fruits_url
    assert_selector "h1", text: "Fruits"
  end

  test "should create fruit" do
    visit fruits_url
    click_on "New fruit"

    fill_in "Description", with: @fruit.description
    fill_in "Energy", with: @fruit.energy
    fill_in "Fat", with: @fruit.fat
    fill_in "Gradient dark", with: @fruit.gradient_dark
    fill_in "Gradient light", with: @fruit.gradient_light
    fill_in "Headline", with: @fruit.headline
    fill_in "Image", with: @fruit.image
    fill_in "Minerals", with: @fruit.minerals
    fill_in "Protein", with: @fruit.protein
    fill_in "Sugar", with: @fruit.sugar
    fill_in "Title", with: @fruit.title
    fill_in "Vitamins", with: @fruit.vitamins
    click_on "Create Fruit"

    assert_text "Fruit was successfully created"
    click_on "Back"
  end

  test "should update Fruit" do
    visit fruit_url(@fruit)
    click_on "Edit this fruit", match: :first

    fill_in "Description", with: @fruit.description
    fill_in "Energy", with: @fruit.energy
    fill_in "Fat", with: @fruit.fat
    fill_in "Gradient dark", with: @fruit.gradient_dark
    fill_in "Gradient light", with: @fruit.gradient_light
    fill_in "Headline", with: @fruit.headline
    fill_in "Image", with: @fruit.image
    fill_in "Minerals", with: @fruit.minerals
    fill_in "Protein", with: @fruit.protein
    fill_in "Sugar", with: @fruit.sugar
    fill_in "Title", with: @fruit.title
    fill_in "Vitamins", with: @fruit.vitamins
    click_on "Update Fruit"

    assert_text "Fruit was successfully updated"
    click_on "Back"
  end

  test "should destroy Fruit" do
    visit fruit_url(@fruit)
    click_on "Destroy this fruit", match: :first

    assert_text "Fruit was successfully destroyed"
  end
end
