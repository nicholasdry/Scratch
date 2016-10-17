abstract class Animal {
	public void run() {
		System.out.println("run");
	}
}

abstract class Equine extends Animal {}

class Horse extends Equine { }

public class AbstractTest {
	public static void main(String[] args) {

		Animal horse = new Equine();
		horse.run();

	}
}
