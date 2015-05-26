#!/usr/bin/env ruby

# file: dummy_omah.rb

require 'omah'


class DummyOmah < Omah

  def initialize(user: 'user', filepath: '.', mail: {}, \
               options: {xslt: 'listing.xsl'}, plugins: [])

    @mail = {user_name: '',  password: '' }.merge mail
        
    @email_address = @mail[:user_name]

    @variables = {user_name: @mail[:user_name], email_address: @email_address}
    
    super(user: user, filepath: filepath, plugins: plugins, options: options)        

  end

  def fetch_email(a)

    messages = a.map.inject([]) do |r, x|

      r << Hash[%i(id from to subject date body_text body_html attachments)\
                                                                  .zip(a[0])]
    end

    # messages are stored in the file dynarexdaily.xml
    self.store messages    
    
    n = messages.length
    n.to_s + " new message" + (n > 1 ? 's' : '')
    
  end
end
