require 'reading_time'

RSpec.describe 'reading_time method' do 
  it "estimates reading time for a text" do 
    result = reading_time("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sagittis, urna sed dignissim molestie, leo metus porta urna, ac auctor orci diam convallis massa. Etiam a nisl tincidunt nulla dictum venenatis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis eu aliquam mi, non ultrices ligula. Maecenas egestas non tortor in porttitor. Nullam imperdiet ligula et malesuada aliquet. Vivamus imperdiet finibus diam, eget accumsan nunc. Sed at lorem vel magna laoreet luctus. Etiam ipsum massa, laoreet a felis ac, ultrices lacinia turpis. Mauris non bibendum elit, facilisis lobortis velit. Aliquam viverra ornare ligula, et pretium.")
    expect(result).to eq "0.5 minutes"
  end
end