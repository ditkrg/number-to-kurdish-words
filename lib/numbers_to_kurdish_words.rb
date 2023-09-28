require "numbers_to_kurdish_words/version"

module NumbersToKurdishWords
  class Error < StandardError; end
  # require "to_words/version"
  def to_words(number = self, level = 0)
    ones = ["یەک", "دوو", "سێ", "چوار", "پێنج", "شەش", "حەوت", "هەشت", "نۆ"];
    ten = ["دە", "یازدە", "دوازدە", "سیازدە", "چواردە", "پازدە", "شازدە", "حەفدە", "هەژدە", "نۆزدە"];
    tens = ["بیست", "سی", "چل", "پەنجا", "شەست", "حەفتا", "هەشتا", "نەوەد"];
    hundreds = ["سەد", "دوو سەد", "سێ سەد", "چوار سەد", "پێنج سەد", "شەش سەد", "حەوت سەد", "هەشت سەد", "نۆ سەد"];

    result = "";

    return "" if number === nil

    if number < 0
      number = number * -1;
      return "سالب " + number.to_words
    end

    if  number === 0
      if level === 0
        return "سفر";
      else
        return "";
      end
    end

    if level > 0
      result += " و ";
      level -= 1;
    end

    if number < 10
      result += ones[number - 1];
    elsif (number < 20)
      result += ten[number - 10];
    elsif (number < 100)
      result += tens[(number / 10).floor - 2] + to_words(number % 10, level + 1);
    elsif (number < 1000)
      result += hundreds[(number / 100).floor - 1] + to_words(number % 100, level + 1);
    elsif (number < 1000000)
      result += (number / 1000 < 2 ? '' : to_words((number / 1000).floor, level)) + " هەزار" + to_words(number % 1000, level + 1);
    elsif (number < 1000000000)
      result += to_words((number / 1000000).floor, level) + " ملیۆن" + to_words(number % 1000000, level + 1);
    elsif (number < 1000000000000)
      result += to_words((number / 1000000000).floor, level) + " ملیار" + to_words(number % 1000000000, level + 1);
    elsif (number < 1000000000000000)
      result += to_words((number / 1000000000000).floor, level) + " ترلیۆن" + to_words(number % 1000000000000, level + 1);
    end

    return result;
  end
end

INTEGER_KLASS = 1.class # Fixnum before Ruby 2.4, Integer from Ruby 2.4
class INTEGER_KLASS
  include NumbersToKurdishWords
end

class String
  include NumbersToKurdishWords
end
