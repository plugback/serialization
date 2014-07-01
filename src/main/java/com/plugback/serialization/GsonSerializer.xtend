package com.plugback.serialization

import com.google.gson.ExclusionStrategy
import com.google.gson.Gson
import com.google.gson.GsonBuilder

class GsonSerializer implements Serializer {

	Gson gson = createGson()

	protected def createGson() {
		if (fields() != null)
			new GsonBuilder().addSerializationExclusionStrategy(fields()).create
		else
			new Gson
	}

	def ExclusionStrategy fields() {
		return null
	}

	override <T> serialize(T object) {
		return gson.toJson(object)
	}

	override <T> deserialize(String data, Class<T> c) {
		return gson.fromJson(data, c)
	}

}
