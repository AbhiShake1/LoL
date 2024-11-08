# About
LoL (Lua on Lauda) is a Lua framework for highly energetic bois. There is only concept: `hole`, and only one philosophy: `INSERT INTO hole`.

# Usage
Being highly energetic bois always looking to `INSERT INTO hole`, let's create a `hole` first:
```lua
local Hole = require 'lol.hole'
local hole = Hole({
  port = 8080,
})
```
This hole is now ready to receive requests. And its fun like `INSERTING INTO` **real** `hole`, but without the associated effort, time, cost, and drama.

Now, let's define what requests the hole accepts:
```lua
hole:accept('withhelmet', function(hole)
  print('executes')
  hole:accept('Was it fun')
end)

hole:accept('withoutHelmet', function(hole)
  hole:reject('SAFETY FIRST!!!')
  print('executes-not')
end)
```
>> **Note**: `REST` has tantrums, making us spend more time and energy trying to `INSERT INTO hole`. We bois are `RESTless`. We bois want to `INSERT INTO hole` *without* waisting that fore-foreplay energy. We also avoid that emotional nesting. Holes are also case insensitive, meaning you can `SHOUT` or `be polite` to the hole or even `KeEP ChanGIng cASSes`. When the hole accepts or rejects request, the lines bellow will not execute

And now, let's make the hole expect requests:
```lua
hole:expect_requests()
```

