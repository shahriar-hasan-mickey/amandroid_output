package com.dbbl.nexusPay.qr;

public class QrException extends Exception {

    /**
	 * 
	 */
	private static final long serialVersionUID = -6400977707448165106L;

	public QrException(Throwable cause) {
        super("Exception occurred while handling Qr", cause);
    }

}
