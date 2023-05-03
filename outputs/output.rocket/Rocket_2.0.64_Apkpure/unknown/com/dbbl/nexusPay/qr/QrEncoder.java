/**
 * 
 */
package com.dbbl.nexusPay.qr;

import com.dbbl.nexusPay.qr.decoder.DecoderBeanMap;
import com.dbbl.nexusPay.qr.encoder.Encoder;

/**
 * @author Tousif Osman <tousif.osman@dutchbanglabank.com>
 * @since Sep 26, 2018 1:02:27 PM
 * @version 0.0
 * -------------------------------------------------------
 */
public class QrEncoder {

	/**
	 * 
	 */
	private QrEncoder() {
		// TODO Auto-generated constructor stub
	}
	
	public static String encnode(DecoderBeanMap beanMap) {
		return new Encoder(beanMap).encode();
	}

}
