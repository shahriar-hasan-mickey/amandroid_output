package com.dbbl.nexusPay.qr.mapper;

public class MapperRoot extends Mapper {
	
	public MapperRoot() {
		
		add("00", LengthType.FIXED,		2,		DataFormat.N	);
		add("01", LengthType.FIXED,		2,		DataFormat.N	);
		add("44", LengthType.VARIABLE,	99,		DataFormat.ANS,	MapperMerchantAccount.class);
		add("52", LengthType.FIXED,		4,		DataFormat.N	);
		add("53", LengthType.FIXED,		3,		DataFormat.N	);
		add("54", LengthType.VARIABLE,	13,		DataFormat.ANS	);
		add("58", LengthType.FIXED,		2,		DataFormat.ANS	);
		add("59", LengthType.VARIABLE,	25,		DataFormat.ANS	);
		add("60", LengthType.VARIABLE,	15,		DataFormat.ANS	);
		add("62", LengthType.VARIABLE,	99,		DataFormat.S,	MapperAdditionalData.class);
		add("63", LengthType.FIXED,		4,		DataFormat.ANS	);
		add("64", LengthType.VARIABLE,	99,		DataFormat.S,	MapperMerchantInformationLanguage.class);
		add("88", LengthType.VARIABLE,	99,		DataFormat.S,	MapperAdditionalTransactionData.class);
	
	}

}
