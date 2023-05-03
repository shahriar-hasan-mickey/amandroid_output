package com.dbbl.nexusPay.qr.mapper;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;

public final class MapperFactory {
	
	private static MapperFactory instance;
	private final HashMap<Class<? extends Mapper>, Mapper> instanceMap = new HashMap<>();

	/**
	 * Do not instantiate {@code MapperFactory} by using {@code new} keyword.
	 * Call {@code MapperFactory#getInstance()} method instead.  
	 */
	private MapperFactory() {
		// Hide public constructor
	}
	
	private static MapperFactory getInstance() {
		if (instance == null) {
			instance = new MapperFactory();
		}
		return instance;
	}
	
	/**
	 * Creates singleton Mapper object. Avoid calling new to create new instance every time as
	 * mapper object holds fixed information about a specific mapping  
	 * @param mapperClass A child {@code class} of {@code Mapper.class}
	 * @return
	 */
	public static Mapper getMapperInstance(Class<? extends Mapper> mapperClass) {
		Mapper mapperObj = getInstance().instanceMap.get(mapperClass);
		if (mapperObj == null) {
			try {
				
				mapperObj = mapperClass.getConstructor().newInstance();
				getInstance().instanceMap.put(mapperClass, mapperObj);
				
			} catch (InstantiationException | IllegalAccessException | IllegalArgumentException
					| InvocationTargetException | NoSuchMethodException | SecurityException e) {
				
				e.printStackTrace();
			}
		}
		return mapperObj;
	}

}
