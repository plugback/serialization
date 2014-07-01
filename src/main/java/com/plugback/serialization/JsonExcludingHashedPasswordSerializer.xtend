package com.plugback.serialization

import com.google.gson.GsonBuilder
import com.google.gson.Gson

class JsonExcludingHashedPasswordSerializer implements Serializer{
	
	private Gson gson = new GsonBuilder().addSerializationExclusionStrategy(new Exclude("hashedPassword")).create
	
	
	override <T> serialize(T object) {
		return gson.toJson(object)
	}
	
	override <T> deserialize(String data, Class<T> c) {
		return gson.fromJson(data, c)
	}
	
}