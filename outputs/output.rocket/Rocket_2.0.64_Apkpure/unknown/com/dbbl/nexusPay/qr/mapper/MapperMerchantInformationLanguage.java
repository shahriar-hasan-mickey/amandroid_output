package com.dbbl.nexusPay.qr.mapper;

public class MapperMerchantInformationLanguage extends Mapper {

	public MapperMerchantInformationLanguage() {
		add("00", LengthType.FIXED,		2,	DataFormat.ANS	);
		add("01", LengthType.VARIABLE,	25,	DataFormat.S	);
		add("02", LengthType.VARIABLE,	25, DataFormat.S	);
	}

}
