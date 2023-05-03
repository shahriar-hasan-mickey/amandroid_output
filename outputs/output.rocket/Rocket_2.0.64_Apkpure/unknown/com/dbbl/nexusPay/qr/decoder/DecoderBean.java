package com.dbbl.nexusPay.qr.decoder;

public class DecoderBean {

	private String sData;
	private DecoderBeanMap dData;
	private boolean hasSubData;
	
	public DecoderBean(String data) {
		sData = data;
	}
	
	public DecoderBean(DecoderBeanMap data) {
		dData = data;
		hasSubData = true;
	}

	/**
	 * @return the sData
	 */
	public String getData() {
		return sData;
	}

	/**
	 * @return the SubData if available otherwise {@code null}
	 */
	public DecoderBeanMap getSubData() {
		return dData;
	}

	/**
	 * @return the hasSubData
	 */
	public boolean hasSubData() {
		return hasSubData;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		if (hasSubData) {
			return "DecoderBean ["+ dData +"]";
		}
		return "DecoderBean [" + sData + "]";
	}

}
