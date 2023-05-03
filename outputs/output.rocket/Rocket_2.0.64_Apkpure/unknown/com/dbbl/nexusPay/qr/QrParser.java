/**
 * 
 */
package com.dbbl.nexusPay.qr;

import com.dbbl.nexusPay.qr.decoder.Decoder;
import com.dbbl.nexusPay.qr.decoder.DecoderBeanMap;

/**
 * @author Tousif Osman <tousif.osman@dutchbanglabank.com>
 * @since Sep 15, 2018 2:21:18 PM
 * @version 0.0
 * -------------------------------------------------------
 */
public class QrParser {
	
	/**
	 * 
	 */
	private QrParser() {
		// Hide public constructor
	}
	
	public static DecoderBeanMap Parse(String qrString) throws QrException {
		return new Decoder(qrString).decode();
	}

}
