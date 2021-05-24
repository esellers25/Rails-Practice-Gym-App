

gym_1 = Gym.create(name: "L.A.Fitness", address: "Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979")
gym_2 = Gym.create(name: "Planet Fitness", address: "7768 David Avenue, Greenside, PA 67475-3655")

Client.create(name: "Cassie Effertz", age: 18)
Client.create(name: "Dorris Bogan", age: 52)
Client.create(name: "Bernie Schiller", age: 44)
Client.create(name: "Manie Dare", age: 29)
Client.create(name: "Bert Doyle", age: 38)
Client.create(name: "Gladys Jones", age: 23)

Membership.create(membership_charge: 30, client: Client.last, gym: gym_2)
Membership.create(membership_charge: 50, gym: gym_1, client: Client.third)
Membership.create(membership_charge: 50, gym: gym_2, client: Client.fourth)
Membership.create(membership_charge: 30, gym: gym_2, client: Client.second)
Membership.create(membership_charge: 50, gym: gym_1, client: Client.first)
Membership.create(membership_charge: 30, gym: gym_1, client: Client.fifth)