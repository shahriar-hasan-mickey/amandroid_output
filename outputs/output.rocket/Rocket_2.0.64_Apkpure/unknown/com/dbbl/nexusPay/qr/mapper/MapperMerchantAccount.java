package com.dbbl.nexusPay.qr.mapper;

public class MapperMerchantAccount extends Mapper {

	public MapperMerchantAccount() {
		
		add("00", LengthType.VARIABLE, 32, DataFormat.ANS);
		add("01", LengthType.FIXED, 15, DataFormat.ANS);
		add("02", LengthType.UNDEFINED, -1, DataFormat.S);
		add("03", LengthType.UNDEFINED, -1, DataFormat.S);
	
	}

}
