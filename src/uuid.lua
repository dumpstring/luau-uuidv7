local rand = Random.new(DateTime.now().UnixTimestampMillis)

local function random_hex(bits)
	local max_value = 2 ^ bits - 1
	return string.format("%0" .. (bits // 4) .. "x", rand:NextNumber(0, max_value))
end

return function(braces: boolean)
	local now = math.floor(DateTime.now().UnixTimestampMillis)
	local unix_hex = string.format("%012x", now)

	local random_a = random_hex(12)
	local random_b = random_hex(16)
	local random_c = random_hex(16)

	local versioned = "7" .. random_a:sub(2)

	local variant = string.format("%x", (tonumber(random_b:sub(1, 1), 16) % 4 + 8)) .. random_b:sub(2)

	local uuid = table.concat({
		unix_hex:sub(1, 8),
		"-",
		unix_hex:sub(9, 12),
		"-",
		versioned,
		"-",
		variant,
		"-",
		random_c,
	})

	if braces then
		uuid = "{" .. uuid .. "}"
	end

	return uuid
end
