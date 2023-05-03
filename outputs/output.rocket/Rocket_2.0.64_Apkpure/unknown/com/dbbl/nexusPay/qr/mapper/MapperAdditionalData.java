package com.dbbl.nexusPay.qr.mapper;

public class MapperAdditionalData extends Mapper {

	public MapperAdditionalData() {
		add("01", LengthType.VARIABLE, 	25, DataFormat.ANS);
		add("02", LengthType.VARIABLE, 	25, DataFormat.ANS);
		add("03", LengthType.VARIABLE,	25,	DataFormat.ANS);
		add("04", LengthType.VARIABLE,	25, DataFormat.ANS);
		add("05", LengthType.VARIABLE,	25, DataFormat.ANS);
		add("06", LengthType.VARIABLE,	25, DataFormat.ANS);
		add("07", LengthType.VARIABLE,	25, DataFormat.ANS);
		add("08", LengthType.VARIABLE,	25,	DataFormat.ANS);
		add("09", LengthType.VARIABLE,	3,	DataFormat.ANS);
	}

}
