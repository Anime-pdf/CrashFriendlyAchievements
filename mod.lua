Hooks:PostHook(ConnectionNetworkHandler, "set_dropin", "set_dropin_CFA", function()
  Global.statistics_manager.playing_from_start = true
  log("[CrashFriendlyAchievements] Overriding drop-in flag on network request")
end)

Hooks:PostHook(StatisticsManager, "start_session", "start_session_CFA", function(self, data)
    Global.statistics_manager.playing_from_start = true
    self._start_session_drop_in = false
    self._start_session_from_beginning = true
    log("[CrashFriendlyAchievements] Overriding drop-in flag on session start")
end)

Hooks:OverrideFunction(StatisticsManager, "is_dropin", function(self)
    return false
end)
