::mods_hookExactClass("entity/world/settlements/city_state", function ( o )
{
	o.onBuild = function( _settings = null )
	{
		local myTile = this.getTile();
		local tiles = [
			myTile
		];
		local mapGen = this.MapGen.get(this.Const.World.TerrainScript[this.Const.World.TerrainType.Oasis]);
		myTile.Type = this.Const.World.TerrainType.Oasis;

		for( local i = 0; i < 6; ++i )
		{
			local nextTile = myTile.getNextTile(i);

			if (nextTile.Type == this.Const.World.TerrainType.Desert)
			{
				tiles.push(nextTile);
			}

			for( local j = 0; j < 6; ++j )
			{
				local veryNextTile = nextTile.getNextTile(i);

				if (veryNextTile.Type == this.Const.World.TerrainType.Desert && this.Math.rand(1, 100) <= 66)
				{
					tiles.push(veryNextTile);
				}
			}
		}

		foreach( tile in tiles )
		{
			tile.Type = 0;
			tile.clear();
			mapGen.fill({
				X = tile.SquareCoords.X,
				Y = tile.SquareCoords.Y,
				W = 1,
				H = 1,
				IsEmpty = false
			}, null);
		}

		for( local x = myTile.SquareCoords.X - 3; x < myTile.SquareCoords.X + 3; ++x )
		{
			for( local y = myTile.SquareCoords.Y - 3; y < myTile.SquareCoords.Y + 3; ++y )
			{
				local tile = this.World.getTileSquare(x, y);

				if (tile.Type == this.Const.World.TerrainType.Mountains)
				{
				}
				else
				{
					tile.clear();
					this.MapGen.get(this.Const.World.TerrainScript[tile.Type]).fill({
						X = x,
						Y = y,
						W = 1,
						H = 1,
						IsEmpty = false
					}, null, 2);
				}
			}
		}

		for( local x = myTile.SquareCoords.X - 3; x < myTile.SquareCoords.X + 3; ++x )
		{
			for( local y = myTile.SquareCoords.Y - 3; y < myTile.SquareCoords.Y + 3; ++y )
			{
				local tile = this.World.getTileSquare(x, y);

				if (tile.Type == this.Const.World.TerrainType.Mountains)
				{
				}
				else
				{
					this.MapGen.get(this.Const.World.TerrainScript[tile.Type]).fill({
						X = x,
						Y = y,
						W = 1,
						H = 1,
						IsEmpty = false
					}, null, 3);
				}
			}
		}

		this.addBuilding(this.new("scripts/entity/world/settlements/buildings/crowd_oriental_building"), 5);
		if (::Legends.Mod.ModSettings.getSetting("RogueMode").getValue())
		{	
			this.addBuilding(this.new("scripts/entity/world/settlements/buildings/rogue_marketplace_oriental_building"), 2);
			this.addBuilding(this.new("scripts/entity/world/settlements/buildings/rogue_alchemist_building"));			
		}
		else
		{
			this.addBuilding(this.new("scripts/entity/world/settlements/buildings/marketplace_oriental_building"), 2);
			this.addBuilding(this.new("scripts/entity/world/settlements/buildings/alchemist_building"));			
		}
		local w = 0;
		local a = 0;

		for( local i = 0; i < 2; ++i )
		{
			if (this.Const.World.Buildings.Arenas == 0)
			{
				this.addBuilding(this.new("scripts/entity/world/settlements/buildings/arena_building"));
				if (::Legends.Mod.ModSettings.getSetting("RogueMode").getValue())	
				{
					this.addBuilding(this.new("scripts/entity/world/settlements/buildings/rogue_weaponsmith_oriental_building"));	
					this.addBuilding(this.new("scripts/entity/world/settlements/buildings/rogue_armorsmith_oriental_building"));						
				}
			}
			else if (this.Const.World.Buildings.WeaponsmithsOriental == 0)
			{
				this.addBuilding(this.new("scripts/entity/world/settlements/buildings/weaponsmith_oriental_building"));
				++w;
			}
			else if (this.Const.World.Buildings.ArmorsmithsOriental == 0)
			{
				this.addBuilding(this.new("scripts/entity/world/settlements/buildings/armorsmith_oriental_building"));
				++a;
			}
			else if (this.Const.DLC.Unhold && this.Const.World.Buildings.TaxidermistsOriental == 0)
			{
				this.addBuilding(this.new("scripts/entity/world/settlements/buildings/taxidermist_oriental_building"));
			}
			else if (w == 0 && (a != 0 || this.Math.rand(1, 100) <= 50))
			{
				this.addBuilding(this.new("scripts/entity/world/settlements/buildings/weaponsmith_oriental_building"));
				++w;
			}
			else
			{
				this.addBuilding(this.new("scripts/entity/world/settlements/buildings/armorsmith_oriental_building"));
				++a;
			}
		}

		this.addBuilding(this.new("scripts/entity/world/settlements/buildings/temple_oriental_building"));

		if (this.Math.rand(1, 100) <= 60)
		{
			this.buildAttachedLocation(1, "scripts/entity/world/attached_location/stone_watchtower_oriental_location", [
				this.Const.World.TerrainType.Plains,
				this.Const.World.TerrainType.Steppe,
				this.Const.World.TerrainType.Hills,
				this.Const.World.TerrainType.Desert
			], [], 4, true);
			this.buildAttachedLocation(this.Math.rand(0, 1), "scripts/entity/world/attached_location/militia_trainingcamp_oriental_location", [
				this.Const.World.TerrainType.Plains,
				this.Const.World.TerrainType.Steppe,
				this.Const.World.TerrainType.Hills,
				this.Const.World.TerrainType.Desert
			], [], 1, true);
		}
		else
		{
			this.buildAttachedLocation(this.Math.rand(0, 1), "scripts/entity/world/attached_location/stone_watchtower_oriental_location", [
				this.Const.World.TerrainType.Plains,
				this.Const.World.TerrainType.Steppe,
				this.Const.World.TerrainType.Hills,
				this.Const.World.TerrainType.Desert
			], [], 4, true);
			this.buildAttachedLocation(1, "scripts/entity/world/attached_location/militia_trainingcamp_oriental_location", [
				this.Const.World.TerrainType.Plains,
				this.Const.World.TerrainType.Steppe,
				this.Const.World.TerrainType.Hills,
				this.Const.World.TerrainType.Desert
			], [], 1, true);
		}
		if (this.m.IsCoastal && !::Legends.Mod.ModSettings.getSetting("RogueMode").getValue())
		{
			this.buildAttachedLocation(2, "scripts/entity/world/attached_location/harbor_location", [
				this.Const.World.TerrainType.Shore
			], [
				this.Const.World.TerrainType.Ocean,
				this.Const.World.TerrainType.Shore
			], -1, false, false);
			this.buildAttachedLocation(this.Math.rand(0, 1), "scripts/entity/world/attached_location/fishing_huts_oriental_location", [
				this.Const.World.TerrainType.Plains,
				this.Const.World.TerrainType.Steppe,
				this.Const.World.TerrainType.Desert,
				this.Const.World.TerrainType.Oasis
			], [
				this.Const.World.TerrainType.Shore
			]);
		}

		local settlements = this.World.EntityManager.getSettlements();
		local n = 0;

		foreach( s in settlements )
		{
			if (s.isSouthern())
			{
				n = ++n;
				n = n;

				if (s.getID() == this.getID())
				{
					break;
				}
			}
		}

		this.buildAttachedLocation(this.Math.rand(n == 1 ? 2 : 0, n == 1 ? 2 : 1), "scripts/entity/world/attached_location/incense_dryer_location", [
			this.Const.World.TerrainType.Steppe,
			this.Const.World.TerrainType.Desert,
			this.Const.World.TerrainType.Oasis
		], []);
		this.buildAttachedLocation(this.Math.rand(n == 2 ? 2 : 0, n == 2 ? 2 : 1), "scripts/entity/world/attached_location/silk_farm_location", [
			this.Const.World.TerrainType.Steppe,
			this.Const.World.TerrainType.Desert,
			this.Const.World.TerrainType.Oasis
		], []);
		this.buildAttachedLocation(this.Math.rand(n == 3 ? 2 : 0, n == 3 ? 2 : 1), "scripts/entity/world/attached_location/plantation_location", [
			this.Const.World.TerrainType.Steppe,
			this.Const.World.TerrainType.Desert,
			this.Const.World.TerrainType.Oasis
		], []);
		this.buildAttachedLocation(this.Math.rand(0, 1), "scripts/entity/world/attached_location/dye_maker_oriental_location", [
			this.Const.World.TerrainType.Steppe,
			this.Const.World.TerrainType.Desert,
			this.Const.World.TerrainType.Oasis
		], [
			this.Const.World.TerrainType.Hills
		]);
		this.buildAttachedLocation(this.Math.rand(1, 2), "scripts/entity/world/attached_location/goat_herd_oriental_location", [
			this.Const.World.TerrainType.Steppe,
			this.Const.World.TerrainType.Desert,
			this.Const.World.TerrainType.Oasis
		], []);
	}
});		