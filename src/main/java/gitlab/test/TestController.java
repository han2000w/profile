package gitlab.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@GetMapping("/simple")
	public String simpleWeb() {
		
		return "Simple test33";
	}
}
