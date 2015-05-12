package org.taller.endpoint.cxf;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:/application-config-cxf.xml"})
public class clientSayHelloTest {
	
	@Autowired
    private SayHello instance;
 
    @Test
    public void testDecirHola() {
        String name = "Zim";
        String expResult = "Hello " + name + "!";
 
        String result = instance.sayHello(name);
 
        assertEquals(expResult, result);
    }
 
}
