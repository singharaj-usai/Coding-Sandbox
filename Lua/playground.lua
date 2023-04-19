-- Load the DatastoreService module
local DataStoreService = game:GetService("DataStoreService")

-- Define the name of the Datastore
local DATASTORE_NAME = "MyDatastore"

-- Load the Datastore
local myDataStore = DataStoreService:GetDataStore(DATASTORE_NAME)

-- Define a player and a value to save
local player = game.Players:GetPlayerByUserId(123456)
local valueToSave = { score = 100, level = 5 }

-- Save the value to the Datastore
local success, errorMessage = pcall(function()
    myDataStore:SetAsync(player.UserId, valueToSave)
end)
if not success then
    warn("Error saving data:", errorMessage)
end

-- Load the value from the Datastore
local loadedValue = myDataStore:GetAsync(player.UserId)
if loadedValue then
    print("Loaded data:", loadedValue)
else
    print("No data found for player:", player.Name)
end
