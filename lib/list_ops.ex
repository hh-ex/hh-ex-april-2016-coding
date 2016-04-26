defmodule ListOps do

	# Count example
	# with a nice help by Julius Beckmann https://github.com/h4cc
	def count ([]) do
		0
	end

	def count ([h|t]) do
		1 + count(t)
	end

	# reverse example
	# with a nice help by Ole Michaelis https://github.com/nesQuick
	def reverse(list) do
		do_reverse(list, [])
		# reverse(t) ++ [h]
	end

	defp do_reverse([], ac) do
		ac
	end

	defp do_reverse([h|t], ac) do
		do_reverse(t, [h|ac])
	end
end
