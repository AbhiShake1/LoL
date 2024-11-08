--- Create a new isolated hole
---@param options? {port?: number}
function Hole(options)
	local self = {
		port = options and options.port or 6969,
		accepted_requests = {},
	}

	---@private
	function self:accept(request, callback)
		self.accepted_requests[request:lower()] = callback
	end

	function self:expect_requests()
		local server = require("luvit.http").createServer(function(req, res)
			local request = req.url:match("^/([^/]+)")
			if request then
				request = request:lower()
				if self.accepted_requests[request] then
					self.accepted_requests[request](self)
					res:finish()
				else
					res:statusCode(404)
					res:finish("Unknown request: " .. request)
				end
			else
				res:statusCode(400)
				res:finish("Invalid request format")
			end
		end)

		server:listen(self.port, function()
			print("Hole expecting ***k on port " .. self.port)
		end)
	end

	local hole = {
		expect_requests = self.expect_requests,
	}

	---@overload fun(request: string, callback: fun())
	local openableHole = setmetatable(hole, {
		__call = function(request, callback)
			self:accept(request, callback)
		end,
	})
	return openableHole
end

local hole = Hole()
hole:expect_requests()

return Hole
