from dataclasses import dataclass

@dataclass()
class Regione:
    id: str
    nome: str

    def __eq__(self, other):
        return isinstance(other, Regione) and self.id == other.id

    def __lt__(self, other):
        return self.nome < other.nome

    def __str__(self):
        return f"{self.nome}"

    def __repr__(self):
        return f"{self.nome}"
