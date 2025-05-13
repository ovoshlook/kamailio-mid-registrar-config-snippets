function rewrite_expires_in_contact(to)
	if tonumber(to) == nil then
		return
	end
	local contact = KSR.hdr.get("Contact")
	local c = string.gsub(string.lower(c),"expires=%d+","expires="..to)
	KSR.hdr.remove("Contact")
	KSR.hdr.append_after("Contact: "..c.."\r\n", "From")
end

