# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  counts = Hash.new(0)
  magazine.split('').each do |c|
    counts[c] += 1
  end

  ransom_note.split('').each do |c|
    counts[c] -= 1
    return false if counts[c] < 0
  end

  true
end
