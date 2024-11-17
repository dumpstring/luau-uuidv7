# UUID Generator

A simple Roblox utility for generating UUIDv7 strings. This implementation uses the current Unix timestamp and random values to create unique identifiers.

## Usage

Import the function into your project and call it with the optional `braces` parameter:

```lua
local UUID = require(path.to.UUIDGenerator)

-- Generate a UUID without braces
local uuid = UUID()
print(uuid) -- e.g., "0187f3d4-1234-7abc-8def-9876543210ab"

-- Generate a UUID with braces
local uuidWithBraces = UUID(true)
print(uuidWithBraces) -- e.g., "{0187f3d4-1234-7abc-8def-9876543210ab}"
```

## Parameters

- `braces: boolean`  
  When `true`, the generated UUID is wrapped in curly braces.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
