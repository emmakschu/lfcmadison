#!/usr/bin/python

print "Content-Type: text/html;charset=utf-8\n\n"
print

# list of teams, each team as a tuple with ( 'name', played, points, goal diff,$
teams = [
        ('Arsenal', 32, 59, 22, 55),
        ('Aston Villa', 33, 16, -41, 23),
        ('Bournemouth', 33, 41, -15, 40),
        ('Chelsea', 32, 44, 7, 49),
        ('Crystal Palace', 33, 38, -7, 35),
        ('Everton', 32, 40, 9, 52),
        ('Leicester', 33, 72, 26, 57),
        ('Liverpool', 31, 48, 8, 50),
        ('Man City', 32, 57, 25, 58),
        ('Man United', 32, 53, 9, 39),
        ('Newcastle', 32, 25, -29, 32),
        ('Norwich', 34, 31, -25, 35),
        ('Southampton', 33, 50, 10, 44),
        ('Stoke', 33, 47, -6, 37),
        ('Sunderland', 33, 30, -18, 39),
        ('Swansea', 33, 40, -8, 34),
        ('Tottenham', 33, 65, 35, 60),
        ('Watford', 32, 38, -6, 31),
        ('West Brom', 32, 40, -8, 31),
        ('West Ham', 32, 52, 12, 51)
]

table = sorted( teams, key=lambda team: team[4], reverse=True )
table = sorted( table, key=lambda team: team[3], reverse=True )
table = sorted( table, key=lambda team: team[2], reverse=True )

print """\
<html>

<table class="alt-color">
        <thead><th></th><th>Team</th><th>Played</th><th>Points</th></thead>
        <tbody>"""

index = 0

while index < len(table):
        print """
                <tr><td>"""
        print index +1
        print """
                </td><td>"""
        print table[index][0]
        print """
                </td><td>"""
        print table[index][1]
        print """
                </td><td>"""
        print table[index][2]
        print """
                </td></tr>"""
        index += 1

print """

        </tbody>
</table>

</html>
"""
