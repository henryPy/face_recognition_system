class Building(object):
    def __init__(self, pk, name, location, number_of_floor, acreage):
        # super(Building,self).__init__()
        self.pk = pk
        self.name = name
        self.location = location
        self.number_of_floor = number_of_floor
        self.acreage = acreage

class TypeOfFloor(object):
    def __init__(self, pk, name, description):
        super(TypeOfFloor, self).__init__()
        self.pk = pk
        self.name = name
        self.description = description

class Permission(object):
    def __init__(self, pk, name, description):
        super(Permission, self).__init__()
        self.pk = pk
        self.name = name
        self.description = description

class Floor(object):
    def __init__(self, pk, name, building, type_of_floor, number_of_aparment):
        super(Floor,self).__init__()
        self.pk = pk
        self.name = name
        self.building = building
        self.type_of_floor = type_of_floor
        self.number_of_aparment = number_of_aparment

class Door(object):
    def __init__(self, pk, name, floor, permission):
        self.pk = pk
        self.name = name
        self.floor = floor
        self.permission = permission

class RoleDoor(object):
    def __init__(self, pk, name, description):
        self.pk = pk
        self.name = name
        self.description = description