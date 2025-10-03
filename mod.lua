Hooks:PostHook(ConnectionNetworkHandler, "set_dropin", "set_dropin_CFA", function()
  Global.statistics_manager.playing_from_start = true
  log("[CrashFriendlyAchievements] playing_from_start = true")
end)
