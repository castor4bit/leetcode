# @param {String} date1
# @param {String} date2
# @return {Integer}
def days_between_dates(date1, date2)
  def count_days(date)
    days = 0
    year, month, day = date.split('-').map(&:to_i)
    leaps = (year - 1) / 4 - (year - 1) / 100 + (year - 1) / 400

    mdays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    mdays[1] += 1 if year % 4 == 0 && (year % 400 == 0 || year % 100 != 0)

    days += (year - 1) * 365 + leaps
    (0..month - 2).each do |i|
      days += mdays[i]
    end

    days += day
    days
  end

  (count_days(date1) - count_days(date2)).abs
end
