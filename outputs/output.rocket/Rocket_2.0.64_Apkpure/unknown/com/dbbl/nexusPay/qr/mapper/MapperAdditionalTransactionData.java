package com.dbbl.nexusPay.qr.mapper;

public class MapperAdditionalTransactionData extends Mapper {

	public MapperAdditionalTransactionData() {
		add("00", LengthType.VARIABLE,	32,	DataFormat.ANS);
		add("01", LengthType.FIXED,		4,	DataFormat.N);
		add("02", LengthType.VARIABLE,	25,	DataFormat.ANS);
		add("03", LengthType.FIXED,		3,	DataFormat.N);
		add("04", LengthType.FIXED,		40,	DataFormat.Hexstring);	
	}

}
