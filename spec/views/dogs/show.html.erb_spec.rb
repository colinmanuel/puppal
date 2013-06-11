require 'spec_helper'

describe "dogs/show" do
  before(:each) do
    @dog = assign(:dog, stub_model(Dog,
      :name => "Name",
      :priority => 1,
      :site => "Site",
      :bio => "Bio",
      :photo => "Photo",
      :video => "Video",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Site/)
    rendered.should match(/Bio/)
    rendered.should match(/Photo/)
    rendered.should match(/Video/)
    rendered.should match(/MyText/)
  end
end
