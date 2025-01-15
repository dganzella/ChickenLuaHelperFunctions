---@param inputstr string
---@param at integer
---@return string
function strCharAt(inputstr, at)
	return inputstr:sub(at, at)
end

---@param inputstr string
---@param of string
---@return boolean
function strContains(inputstr, of)
	return strCountOcurrences(inputstr, of) > 0
end

---@param inputstr string
---@param of string
---@return integer
function strCountOcurrences(inputstr, of)
	local _, count = inputstr:gsub(of, '')
	return count
end

---@param inputstr string
---@param at integer?
---@param replaceWith string
---@return string
function strReplaceAt(inputstr, at, replaceWith)
	return inputstr:sub(1, at - 1) .. replaceWith .. inputstr:sub(at + 1)
end

---@param inputstr string
---@param tofind string
---@return integer?
function strFirstIndexOf(inputstr, tofind)
	return inputstr:find(tofind, 1, true)
end

---@param inputstr string
---@param tofind string
---@return integer?
function strLastIndexOf(inputstr, tofind)
	return inputstr:find(tofind .. '[^' .. tofind .. ']*$')
end

---@param inputstr string
---@param sep string
---@return string[]
function strSplit(inputstr, sep)
	local t = {}
	for str in string.gmatch(inputstr, '([^' .. sep .. ']+)') do
		table.insert(t, str)
	end
	return t
end

---@param inputstr string
---@return string
function strTrimSpaces(inputstr)
	return (inputstr:gsub('^%s*(.-)%s*$', '%1'))
end

---@param inputstr string
---@param patternList string[]
---@return string[]
function stringMatchManyPatterns(inputstr, patternList)
	local finalTable = {}
	local keysArray  = {}

	for i = 1, #patternList do
		local patternToMatch = patternList[i]
		for p, str in string.gmatch(inputstr, '()(' .. patternToMatch .. ')') do
			if str ~= nil then
				local key = p + 1
				finalTable[key] = str
				table.insert(keysArray, key)
			end
		end
	end

	table.sort(keysArray)

	local finalArray = {}

	for i = 1, #keysArray do
		table.insert(finalArray, finalTable[keysArray[i]])
	end

	return finalArray
end

---@param inputstrarr string[]
---@param joinStr string
---@return string
function strJoin(inputstrarr, joinStr)
	local finalStr = ''

	for i = 1, #inputstrarr do
		finalStr = finalStr .. inputstrarr[i]

		if i < #inputstrarr then
			finalStr = finalStr .. joinStr
		end
	end

	return finalStr
end

---@param inputstr string
---@param target string
---@param replacement string
---@return string
function strReplace(inputstr, target, replacement)
	local str, _ = string.gsub(inputstr, target, replacement)
	return str
end

---@param inputstr string
---@param targets string[]
---@param replacement string
---@return string
function strMultiReplace(inputstr, targets, replacement)
	local tmp = inputstr

	for i = 1, #targets do
		tmp, _ = string.gsub(tmp, targets[i], replacement)
	end

	return tmp
end
