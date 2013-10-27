require 'evernote_oauth'

auth_token = "S=s1:U=88871:E=1493c7e0665:C=141e4ccda68:P=1cd:A=en-devtoken:V=2:H=9a9f99aca519ab10765bdca55eef0890"

def client 
@client ||= EvernoteOAuth::Client.new(token: auth_token)
end

note_store = client.note_store 
notebooks = note_store.listNotebooks

note = Evernote::EDAM::Type::Note.new
note.title = "Hello from Codeacademy"
note.content = "<en-note>Hello Evernote<br/></en-note>"

note_store.createNote(note)

