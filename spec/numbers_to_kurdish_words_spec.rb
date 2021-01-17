RSpec.describe NumbersToKurdishWords do
  it "has a version number" do
    expect(NumbersToKurdishWords::VERSION).not_to be nil
  end

  it "converts 1 to یەک" do 
    expect(1.to_words).to eq("یەک")
  end

  it "converts 11 to یازدە" do 
    expect(11.to_words).to eq("یازدە")
  end

  it "converts 25 to بیست و پێنج" do 
    expect(25.to_words).to eq("بیست و پێنج")
  end

  it "converts 88 to هەشتا و هەشت" do 
    expect(88.to_words).to eq("هەشتا و هەشت")
  end

  it "converts 10 to دە" do 
    expect(10.to_words).to eq("دە")
  end 
  
  it "converts 100 to سەد" do 
    expect(100.to_words).to eq("سەد")
  end 

  it "converts 104 to سەد و چوار" do 
    expect(104.to_words).to eq("سەد و چوار")
  end 

  it "converts 110 to سەد و دە" do 
    expect(110.to_words).to eq("سەد و دە")
  end 

  it "converts 115 to سەد و پازدە" do 
    expect(115.to_words).to eq("سەد و پازدە")
  end 

  it "converts 555 to پێنج سەد و پەنجا و پێنج" do 
    expect(555.to_words).to eq("پێنج سەد و پەنجا و پێنج")
  end 

  it "converts 1005 to هەزار و پێنج" do 
    expect(1005.to_words.strip).to eq("هەزار و پێنج")
  end 

  it "converts 1012 to هەزار و دوازدە" do 
    expect(1012.to_words.strip).to eq("هەزار و دوازدە")
  end 

  it "converts 1042 to هەزار و چل و دوو" do 
    expect(1042.to_words.strip).to eq("هەزار و چل و دوو")
  end 

  it "converts 1122 to هەزار و سەد و بیست و دوو" do 
    expect(1122.to_words.strip).to eq("هەزار و سەد و بیست و دوو")
  end 

  it "converts 25367 to بیست و پێنج هەزار و سێ سەد و شەست و حەوت" do 
    expect(25367.to_words.strip).to eq("بیست و پێنج هەزار و سێ سەد و شەست و حەوت")
  end 

  it "converts 100012 to سەد هەزار و دوازدە" do 
    expect(100012.to_words.strip).to eq("سەد هەزار و دوازدە")
  end 

end
