package com.dbbl.nexusPay.qr.decoder;

import com.dbbl.nexusPay.qr.QrException;
import com.dbbl.nexusPay.qr.mapper.Mapper;
import com.dbbl.nexusPay.qr.mapper.MapperFactory;
import com.dbbl.nexusPay.qr.mapper.MapperRoot;
import com.dbbl.nexusPay.qr.mapper.Mapper.DataType;
import com.dbbl.nexusPay.qr.mapper.Mapper.LengthType;

public class Decoder {

//	private final String TAG =  Decoder.class.getSimpleName();
	
	private final int ID_LEN = 2;
	private final int LENGTH_LEN = 2;
	
	private int strPtr = 0;
	private String qrStr;
	private Mapper mapper;
	
	private DecoderBeanMap beanMap = new DecoderBeanMap();

	public Decoder(String qrString) {
		qrStr = qrString;
		mapper = MapperFactory.getMapperInstance(MapperRoot.class);
	}
	
	public Decoder(String qrString, Class<? extends Mapper> mapperClass) {
		qrStr = qrString;
		mapper = MapperFactory.getMapperInstance(mapperClass);
	}
	
	public DecoderBeanMap decode() throws QrException {
		
		try {
			while(strPtr < qrStr.length()) {
				
				String id = readStr(ID_LEN);
				
				DataType dataType = mapper.map(id);
				String data;
				
				int dataLen = Integer.parseInt(readStr(LENGTH_LEN));

				if (dataType != null && dataLen >= 0 ) {
                    if ((dataType.getLengthType() == LengthType.FIXED || dataType.getLengthType() == LengthType.UNDEFINED)
                            && dataLen != dataType.getLength()) {

//                        Log.w(TAG, "Data Length Mismatch. Length " + dataLen + " Expected fixed length " + dataType.getLength());

                    } else if (dataType.getLengthType() == LengthType.VARIABLE && dataLen > dataType.getLength()) {

//                        Log.w(TAG, "Data Length Mismatch. Length " + dataLen + " is greater than expected length " + dataType.getLength());
                    }

                }
				
				data = readStr(dataLen);
				
				if (dataType != null && dataType.getSubMapper() != null) {
					beanMap.put(id, new DecoderBean(new Decoder(data, dataType.getSubMapper()).decode()));
				} else {
					beanMap.put(id, new DecoderBean(data));
				}
				
			}
		} catch (Exception e) {
			throw new QrException(e);
		}
		
		return beanMap;	
	}
	
	private String readStr(int length) {
		String readStr = qrStr.substring(strPtr, strPtr + length);
		strPtr += length;
		return readStr;
	}

}
