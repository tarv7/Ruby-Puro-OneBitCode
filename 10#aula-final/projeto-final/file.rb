module ManagerFile
  def self.open
    name_time = Time.now.strftime('%Y%m%d%H%M%S')
    File.open("#{name_time}.txt", 'w')
  end

  def self.write(file, method, text)
    file.send("#{method}", text)
  end
end