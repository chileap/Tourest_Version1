require 'rails_helper'

RSpec.describe "galleries/edit", type: :view do
  before(:each) do
    @gallery = assign(:gallery, Gallery.create!(
      :title => "MyString",
      :description => "MyText",
      :file => "MyString"
    ))
  end

  it "renders the edit gallery form" do
    render

    assert_select "form[action=?][method=?]", gallery_path(@gallery), "post" do

      assert_select "input#gallery_title[name=?]", "gallery[title]"

      assert_select "textarea#gallery_description[name=?]", "gallery[description]"

      assert_select "input#gallery_file[name=?]", "gallery[file]"
    end
  end
end
