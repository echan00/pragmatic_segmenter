module PragmaticSegmenter
  module Languages
    class Burmese < Common
      SENTENCE_BOUNDARY = /.*?[။၏!\?]|.*?$/
      Punctuations = ['။', '၏', '?', '!']

      class Process < PragmaticSegmenter::Process
        private

        def sentence_boundary_punctuation(txt)
          txt.scan(SENTENCE_BOUNDARY)
        end

        def punctuation_array
          Burmese::Punctuations
        end
      end
    end
  end
end
