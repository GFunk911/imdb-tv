require File.dirname(__FILE__) + "/spec_helper"

describe ImdbTV::Page do
  before(:all) do
    @page = ImdbTV::Page.new
    @page.stub!(:episodes_url => File.dirname(__FILE__) + "/pages/madmen.html")
  end
  it 'episode count' do
    @page.episodes.size.should == 26
  end
  it 'first episode title' do
    @page.episodes.first.episode_title.should == 'Smoke Gets in Your Eyes'
  end    
end