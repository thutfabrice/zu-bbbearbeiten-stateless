import datetime
from dataclasses import dataclass

items = []


@dataclass
class Item:
    text: str
    date: datetime
    isCompleted: bool = False


def add(text):
    text = text.replace('b', 'bbb').replace('B', 'Bbb')
    items.append(Item(text))


def get_all():
    return items


def get(index):
    return items[index]


def update(index):
    items[index].isCompleted = not items[index].isCompleted
