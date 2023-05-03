package com.dbbl.nexusPay.qr.mapper;

import java.util.HashMap;

/**
 * @author Tousif Osman <tousif.osman@dutchbanglabank.com>
 * @since Sep 18, 2018 11:12:37 AM
 * @version 0.0
 * Abstract Mapper class to create mapping of NexusPayQR.
 * Its child class must call the {@code Mapper#add()}
 * method in the constructor to add a mapping.
 * -------------------------------------------------------
 */
public abstract class Mapper {
	
	private final HashMap<String, DataType> map = new HashMap<>();
	
	/**
	 * Get the {@code DataType} object for th given mapping id.
	 * @param id
	 * @return Mapping data.
	 */
	public DataType map(String id) {
		return map.get(id);
	}
		
	/**
	 * Adds a mapping in the mapper
	 * @param id
	 * @param lengthType
	 * @param length
	 * @param dataFormat
	 */
	void add(String id, LengthType lengthType, int length, DataFormat dataFormat) {
		map.put(id, new DataType(id, lengthType, length, dataFormat));
	}
	
	/**
	 * Adds a mapping which has a sub mapping
	 * @param id
	 * @param lengthType
	 * @param length
	 * @param dataFormat
	 * @param subMapper
	 */
	void add(String id, LengthType lengthType, int length, DataFormat dataFormat, Class<? extends Mapper> subMapper) {
		map.put(id, new DataType(id, lengthType, length, dataFormat, subMapper));
	}
	
	public enum LengthType {
		VARIABLE, FIXED, UNDEFINED
	}
	
	public enum DataFormat {
		N, S, ANS, Hexstring
	}

	public class DataType {
		private String id;
		private int length;
		private LengthType lengthType;
		private DataFormat dataFormat;
		private Class<? extends Mapper> subMapperClass;
		
		/**
		 * @param length
		 * @param lengthType
		 * @param dataFormat
		 */
		private DataType(String id, LengthType lengthType, int length, DataFormat dataFormat) {
			this.length = length;
			this.lengthType = lengthType;
			this.dataFormat = dataFormat;
		}
		
		
		/**
		 * @param id
		 * @param length
		 * @param lengthType
		 * @param dataFormat
		 * @param subMapping
		 */
		private DataType(String id, LengthType lengthType, int length, DataFormat dataFormat, Class<? extends Mapper> subMapperClass) {
			this.id = id;
			this.length = length;
			this.lengthType = lengthType;
			this.dataFormat = dataFormat;
			this.subMapperClass = subMapperClass;
		}

		/**
		 * @return the id
		 */
		public String getId() {
			return id;
		}

		/**
		 * @return the length
		 */
		public int getLength() {
			return length;
		}

		/**
		 * @return the lengthType
		 */
		public LengthType getLengthType() {
			return lengthType;
		}

		/**
		 * @return the dataFormat
		 */
		public DataFormat getDataFormat() {
			return dataFormat;
		}

		/**
		 * @return the subMapper
		 */
		public Class<? extends Mapper> getSubMapper() {
			return subMapperClass;
		}
	}
}
