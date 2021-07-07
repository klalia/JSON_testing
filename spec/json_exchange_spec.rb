describe "Testing even exchange rates" do

  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it "should be a Hash" do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

  it "should have the base EUR" do
    expect(@exchange_rates.get_base).to eq 'EUR'
  end

  it "should have the date 2017-07-26" do
    expect(@exchange_rates.get_date).to be true
  end

  it "should have 31 rates" do
    expect(@exchange_rates.get_rates.length).to eq 31
  end

  it "should have the rates as a type array" do
    expect(@exchange_rates.get_rates.values).to be_kind_of(Array)
  end

  it "should have the keys of the rates to be a length of 3" do
    expect(@exchange_rates.get_rates.keys[0].length).to eq 3
  end

  it "should have the values of the rates to be a integer" do
    expect(@exchange_rates.get_integer).to be true
  end

  it "should have the keys of rates as a string" do
    expect(@exchange_rates.get_string).to be true
  end

  it "should show that all the keys are uppercase" do
   expect(@exchange_rates.upcase).to be true
  end

end
