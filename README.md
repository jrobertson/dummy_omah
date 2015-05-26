# Testing the Omah gem using the DummyOmah gem

    require 'dummy_omah'

    a = [
          ['001', 'info@twitter.com', 'somebody@jamesrobertson.eu',\
          'test 200','2015-may-26 08:55','just a quick test',\
          '<p>just a quick test</p>',[]]
        ]

    dummy = DummyOmah.new filepath: '/tmp'
    dummy.fetch_email a

The above example simulates messages recevied from an email inbox. The expected fields in a records are id, from, to, subject, date, body_text, body_html, and attachments. All fields are strings except attachments which is an array.

## Resources

* ?dummy_omah https://rubygems.org/gems/dummy_omah?

dummyomah gem omah email testing

