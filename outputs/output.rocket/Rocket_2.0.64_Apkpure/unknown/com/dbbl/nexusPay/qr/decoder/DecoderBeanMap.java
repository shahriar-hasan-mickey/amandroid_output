package com.dbbl.nexusPay.qr.decoder;

import java.util.HashMap;

public class DecoderBeanMap extends HashMap<String, DecoderBean> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4744370548081942019L;
	
	private boolean leafNode = false;
	private String value;

	public DecoderBeanMap find(String key) {
		
		DecoderBean decoderBean = this.get(key);
		
		if (decoderBean != null) {
			if (decoderBean.hasSubData()) {
				return decoderBean.getSubData();
			} else {
				leafNode = true;
				value = decoderBean.getData();
				return this;
			}
		}
		
		return new DecoderBeanMap();
	}
	
	public String getValue() {
		if (this.leafNode) {
			return value;
		} else if (this.size() == 0) {
			return null;
		}
		return toString();
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		String s = "DecoderBeanMap [";
		for (String key : this.keySet()) {
			s += String.format("Key(%s) %s ", key, this.get(key));
		}
		s = s.substring(0, s.length() - 1);
		return s += "]";
	}
	
	

}
