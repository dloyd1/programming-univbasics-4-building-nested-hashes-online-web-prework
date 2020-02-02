def base_hash
	{
	  :railroads => {}
	}
end

def monopoly_with_second_tier
  {
	  :railroads => {
	    pieces: 4
	  }
	}
end

def monopoly_with_third_tier
  {
	  :railroads => {
	    pieces: 4,
	    rent_in_dollars: {
	      one_piece_owned: 25,
	      two_pieces_owned: 50, 
	      three_pieces_owned: 100,
	      four_pieces_owned: 200
	    },
	    names: {
	      reading_railroad: {},
	      
	    }
	   }
	  } 
	} 
end

def monopoly_with_fourth_tier
  
end

 describe "the Hashed pointed to by :names" do
        it "has a key :reading_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:reading_railroad)).to(be_truthy, "key :reading_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:reading_railroad]).to(eq({}), ":reading_railroad should point to an empty Hash")
        end

        it "has a key :pennsylvania_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:pennsylvania_railroad)).to(be_truthy, "key :pennsylvania_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:pennsylvania_railroad]).to(eq({}), ":pennsylvania_railroad should point to an empty Hash")
        end

        it "has a key :b_and_o_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:b_and_o_railroad)).to(be_truthy, "key :b_and_o_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:b_and_o_railroad]).to(eq({}), ":b_and_o_railroad should point to an empty Hash")
        end

        it "has a key :shortline_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:shortline_railroad)).to(be_truthy, "key :shortline_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:shortline_railroad]).to(eq({}), ":shortline_railroad should point to an empty Hash")