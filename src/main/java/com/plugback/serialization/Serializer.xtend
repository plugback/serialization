package com.plugback.serialization

interface Serializer {
	
	def <T> String serialize(T object)
	def <T> T deserialize(String data, Class<T> c)
	
}