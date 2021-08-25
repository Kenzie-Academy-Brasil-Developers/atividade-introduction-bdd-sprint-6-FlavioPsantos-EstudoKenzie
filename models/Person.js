class Person {
    constructor(name, isHealthy = 'true', food = '1') {
        this.name = name;
        this.food = Number(food);
        this.isHealthy = isHealthy;
    }

    cook() {
        this.food += 2;
    }

    eat() {
        if (this.food > 0) {
            this.food -= 1;
        } else {
            this.isHealthy = 'false';
        }
    }
}

module.exports = Person;