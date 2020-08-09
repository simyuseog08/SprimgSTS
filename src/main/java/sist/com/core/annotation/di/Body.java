package sist.com.core.annotation.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

@Component
public class Body {
	@Resource(name="FontAction")
	private FontAction fontAction;

	public FontAction getFontAction() {
		return fontAction;
	}

	public void setFontAction(FontAction fontAction) {
		this.fontAction = fontAction;
	}

	@Override
	public String toString() {
		return "Body [fontAction=" + fontAction + "]";
	}
	

}
