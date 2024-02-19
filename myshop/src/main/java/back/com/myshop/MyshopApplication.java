package back.com.myshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.EnableMBeanExport;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jmx.support.RegistrationPolicy;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication
@EntityScan(basePackages = { "back.com.myshop" })
@EnableJpaRepositories(basePackages = { "back.com.myshop.repository"})
@ComponentScan(basePackages = { "back.com.myshop" })
@EnableMBeanExport(registration = RegistrationPolicy.IGNORE_EXISTING)
@EnableTransactionManagement
@EnableWebMvc
@EnableAutoConfiguration
public class MyshopApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(MyshopApplication.class, args);
	}

}
