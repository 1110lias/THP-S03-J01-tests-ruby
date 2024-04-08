def time_string (le_timer)
    return Time.at(le_timer).utc.strftime('%H:%M:%S')
end