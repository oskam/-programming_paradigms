-module(rotation).
-export([left_rotation/1]).
-record(node, {key, value, left = nil, right = nil}).


left_rotation(#node{right = nil}) ->
  error;

left_rotation(#node{key = K, value = V, left = L, right = R}) ->
	#node{
		key = R#node.key,
		value = R#node.value,
		left = #node{
			key = K,
			value = V,
			left = L,
			right = R#node.left},
		right = R#node.right}.
	
