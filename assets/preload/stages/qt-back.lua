function onCreate()
	-- background shit
	makeLuaSprite('streetBackCute', 'streetBackCute', -600, -300);
	setScrollFactor('streetBackCute', 0.9, 0.9);
	
	makeLuaSprite('streetFrontCute', 'streetFrontCute', -650, 600);
	setScrollFactor('streetFrontCute', 0.9, 0.9);
	scaleObject('stageFrontCute', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('TV_V2_off', 'TV_V2_off', -600, -300);
		setScrollFactor('stagecurtains', 0.9, 0.9);
		scaleObject('stagecurtains', 1.1, 1.1);
	end

	addLuaSprite('streetBackCute', false);
	addLuaSprite('streetFrontCute', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end