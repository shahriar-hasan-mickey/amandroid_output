package com.dbbl.nexusPay.qr.encoder;

import com.dbbl.nexusPay.qr.decoder.DecoderBean;
import com.dbbl.nexusPay.qr.decoder.DecoderBeanMap;

public class Encoder {

	private DecoderBeanMap beanMap;
	
	public Encoder(DecoderBeanMap beanMap) {
		this.beanMap = beanMap;
	}
	
	public String encode() {
		return _encode(beanMap);
	}
	
	private String _encode(DecoderBeanMap beanMap) {
		String encodedCode = "";
		for (String key : beanMap.keySet()) {
			DecoderBean bean = beanMap.get(key);
			if (bean.hasSubData()) {
				String tempEncodedCode = _encode(bean.getSubData());
				encodedCode += String.format("%s%02d%s", key, tempEncodedCode.length(), tempEncodedCode);
			} else {
				encodedCode += String.format("%s%02d%s", key, bean.getData().length(), bean.getData());
			}
		}
		return encodedCode;
	}

}
