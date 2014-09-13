class Greeting:
    locals = {
        "ua": "pruvit mir",
        "us": "hello world"
    }

    def __init__(self, language):
        if not language in self.locals:
            raise Exception("Unknown language!", language)
        
        self.language = language

    def sayHello(self):
        print self.locals[self.language]

lang = "ua"

greeting = Greeting(lang)
greeting.sayHello()