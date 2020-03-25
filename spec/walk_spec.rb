require 'walk'

describe '.tenminuteswalk()' do

  it 'is false when passed a single direction' do
    expect(tenminuteswalk(['e'])).to eq false
  end

  it 'is false when passed less than 10 directions' do
    expect(tenminuteswalk(['e', 'e', 'n', 'w'])).to eq false
  end

  it 'is false when passed less than 10 directions' do
    expect(tenminuteswalk(['e', 'e', 'n', 'w'])).to eq false
  end

  it 'is true when there are 5 west and 5 east' do
    expect(tenminuteswalk(['e', 'e', 'e', 'e', 'e', 'w', 'w', 'w', 'w', 'w'])).to eq true
  end

  it 'is true when there are 5 north and 5 south' do
    expect(tenminuteswalk(['n', 'n', 'n', 'n', 'n', 's', 's', 's', 's', 's'])).to eq true
  end

  it 'is true when there are 3 north, 3 south, 2 west, 2 east' do
    expect(tenminuteswalk(['n', 'n', 'n', 's', 's', 's', 'w', 'w', 'e', 'e'])).to eq true
  end

  it 'is false when there are 3 north, 3 south, 3 west, 1 east' do
    expect(tenminuteswalk(['n', 'n', 'n', 's', 's', 's', 'w', 'w', 'w', 'e'])).to eq true
  end

end
