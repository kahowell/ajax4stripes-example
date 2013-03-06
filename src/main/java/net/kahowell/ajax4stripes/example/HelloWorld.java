package net.kahowell.ajax4stripes.example;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

/**
 * ajax4stripes example ActionBean
 * 
 * @author  Kevin Howell
 */
@UrlBinding("/helloworld.action")
public class HelloWorld implements ActionBean {

	private ActionBeanContext context;
	
	private static int counter = 0;
	
	@Override
	public void setContext(ActionBeanContext context) {
		this.context = context;
	}

	@Override
	public ActionBeanContext getContext() {
		return context;
	}
	
	@DefaultHandler
	public Resolution foo() {
		return new ForwardResolution("/index.jsp");
	}
	
	public int getCounter() {
		return counter;
	}
	
	public Resolution plusOne() {
		counter++;
		return counter();
	}
	
	public Resolution minusOne() {
		counter--;
		return counter();
	}
	
	public Resolution counter() {
		return new ForwardResolution("/counter.jsp");
	}

}
