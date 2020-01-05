# @param {String[][]} watched_videos
# @param {Integer[][]} friends
# @param {Integer} id
# @param {Integer} level
# @return {String[]}
def watched_videos_by_friends(watched_videos, friends, id, level)
  checked_friends = [id]
  target_friends = [id]
  level.times do
    tmp = []
    target_friends.each do |f|
      friends[f].each do |_f|
        unless checked_friends.include?(_f)
          tmp.push(_f)
          checked_friends.push(_f)
        end
      end
    end

    target_friends = tmp
  end

  videos = []
  target_friends.each { |i| videos += watched_videos[i] }

  counts = Hash.new(0)
  videos.each { |v| counts[v] += 1 }

  pairs = []
  counts.each { |k, v| pairs.push(video: k, count: v) }

  pairs
    .sort_by { |p| [p[:count], p[:video]] }
    .map     { |p| p[:video] }
end
