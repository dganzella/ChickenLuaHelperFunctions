---@param t table
---@return any[]
function tblGetKeys(t)
	local keys = {}
	for key, _ in pairs(t) do
		table.insert(keys, key)
	end
	return keys
end

---@param t table
---@return any[]
function tblGetValues(t)
	local keys = {}
	for _, value in pairs(t) do
		table.insert(keys, value)
	end
	return keys
end

---@param t table
---@return table
function tblShallowCopy(t)
	local t2 = {}
	for k, v in pairs(t) do
		t2[k] = v
	end
	return t2
end
