class ImageSqueeze
  module Utils
    def self.image_utility_available?(bin, extension, log_level = Logger::WARN)
      return true if system("which #{bin} > /dev/null")
      if log_level >= Logger::ERROR
        ImageSqueeze.logger.error("#{bin} utility is required for running ImageSqueeze, get it installed already")
        raise StandardError, "#{bin} utility is required for running ImageSqueeze, get it installed already"
      else
        ImageSqueeze.logger.log(log_level, "#{bin} utility could not be found, your #{extension} files won't be squeezed")
      end
    end
  end
end