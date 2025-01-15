---@param arr any[]
---@param f function
---@return any[]
function arrMap(arr, f)
	local t = {}
	for k, v in pairs(arr) do
		t[k] = f(v)
	end
	return t
end

---@param arr any[]
---@return any[]
function arrFlip(arr)
	local t = {}
	for i = 1, #arr do
		t[#arr - i + 1] = arr[i]
	end
	return t
end

---@param arr any[]
---@param f function
---@return any[]
function arrFilter(arr, f)
	local t = {}
	for i = 1, #arr do
		if f(arr[i]) then
			table.insert(t, arr[i])
		end
	end
	return t
end

---@param arr any[]
---@return boolean
function arrContains(arr, val)
	for _, value in ipairs(arr) do
		if value == val then
			return true
		end
	end

	return false
end

---@return any[]
function arrConcat(...)
	local args = { ... }

	local finalArr = {}

	for _, v in ipairs(args) do
		for i = 1, #v do
			table.insert(finalArr, v[i])
		end
	end

	return finalArr
end

---@param arr any[]
---@param value any
---@return integer
function arrIndexOf(arr, value)
	for i, v in ipairs(arr) do
		if v == value then
			return i
		end
	end
	return -1
end

---@param arr any[]
---@param f fun(a: any): boolean
---@return any?
function arrFindFirst(arr, f)
	for i = 1, #arr do
		if f(arr[i]) then
			return arr[i]
		end
	end

	return nil
end

---@param arr any[]
---@param f fun(a: any): boolean
---@return integer
function arrFindFirstIndex(arr, f)
	for i = 1, #arr do
		if f(arr[i]) then
			return i
		end
	end

	return -1
end

---@param arr any[]
---@param f function
function arrForEach(arr, f)
	for i = 1, #arr do
		f(arr[i])
	end
end

---@param arr any[]
---@param initial any?
---@param f function
---@return any?
function arrReduce(arr, initial, f)
	local ret = initial
	for i = 1, #arr do
		ret = f(ret, arr[i])
	end
	return ret
end

---@param arr any[]
---@param f fun(a: any): boolean
---@return boolean
function arrSome(arr, f)
	for i = 1, #arr do
		if f(arr[i]) then
			return true
		end
	end

	return false
end
