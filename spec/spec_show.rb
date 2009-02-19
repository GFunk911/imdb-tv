require File.dirname(__FILE__) + "/spec_helper"

describe ImdbTV::Show do
  before(:all) do
    @show = ImdbTV::Shows.instance.get('Mad Men')
    @page = @show.page
    @show.stub!(:show_id => "not needed")
    @page.stub!(:episodes_url => File.dirname(__FILE__) + "/pages/madmen.html")
  end
  it 'episode count' do
    @show.episodes.size.should == 26
  end
  it 'get_title' do
    ep = ImdbTV::Episode.new(:episode_num => 1, :season => 1)
    @show.get_title(ep).should == 'Smoke Gets in Your Eyes'
  end    
end