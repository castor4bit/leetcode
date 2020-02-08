# @param {Integer} hour
# @param {Integer} minutes
# @return {Float}
def angle_clock(hour, minutes)
  h_angle = (hour * 30 + minutes / 2.0) % 360
  m_angle = minutes * 6

  a = (h_angle - m_angle).abs
  a > 180 ? 360 - a : a
end
