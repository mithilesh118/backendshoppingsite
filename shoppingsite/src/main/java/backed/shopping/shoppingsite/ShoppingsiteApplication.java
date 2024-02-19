package backed.shopping.shoppingsite;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@ComponentScan({"main.controllers", "main.repositories"})
@EnableJpaRepositories(basePackages = "backed.shopping.shoppingsite.repository")
@SpringBootApplication
public class ShoppingsiteApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShoppingsiteApplication.class, args);
	}

}
