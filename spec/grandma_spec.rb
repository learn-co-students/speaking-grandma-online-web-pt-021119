describe '#speak_to_grandma' do
  it 'responds with HUH?! SPEAK UP, SONNY! unless you are shouting' do
    expect(speak_to_grandma('Hi Nana, how are you?')).to eq 'HUH?! SPEAK UP, SONNY!'
  end

  it 'responds with NO, NOT SINCE 1938! when she can hear you' do
    expect(speak_to_grandma('WHAT DID YOU EAT TODAY?')).to eq "NO, NOT SINCE 1938!"
  end  
end
