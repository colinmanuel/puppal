require 'spec_helper'

describe "dogs/edit" do
  before(:each) do
    @dog = assign(:dog, stub_model(Dog,
      :name => "MyString",
      :priority => 1,
      :site => "MyString",
      :bio => "MyString",
      :photo => "MyString",
      :video => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit dog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", dog_path(@dog), "post" do
      assert_select "input#dog_name[name=?]", "dog[name]"
      assert_select "input#dog_priority[name=?]", "dog[priority]"
      assert_select "input#dog_site[name=?]", "dog[site]"
      assert_select "input#dog_bio[name=?]", "dog[bio]"
      assert_select "input#dog_photo[name=?]", "dog[photo]"
      assert_select "input#dog_video[name=?]", "dog[video]"
      assert_select "textarea#dog_notes[name=?]", "dog[notes]"
    end
  end
end
